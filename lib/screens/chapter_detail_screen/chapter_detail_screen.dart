import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thichtruyentranh/common/share_color.dart';
import 'package:thichtruyentranh/models/chapter.dart';
import 'package:thichtruyentranh/screens/chapter_detail_screen/controller/chapter_detail_controller.dart';
import 'package:thichtruyentranh/widgets/loading_widget.dart';
import 'package:thichtruyentranh/widgets/shimmer.dart';

class ChapterDetailScreen extends StatefulWidget {
  final String api;
  final int currentIndex;
  final List<Chapter> chapters;

  const ChapterDetailScreen({
    super.key,
    required this.api,
    required this.currentIndex,
    required this.chapters,
  });

  @override
  State<ChapterDetailScreen> createState() => _ChapterDetailScreenState();
}

class _ChapterDetailScreenState extends State<ChapterDetailScreen>
    with AfterLayoutMixin {
  //controller
  final _controller = Get.put(ChapterDetailController());
  //app bar
  bool _showPosition = false;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    await _controller.getChapter(api: widget.api);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        child: _buildEndDrawer(),
      ),
      body: _buildBody(context),
    );
  }

  Drawer _buildEndDrawer() {
    return Drawer(
      child: ListView.builder(
        itemCount: widget.chapters.length,
        itemBuilder: (context, index) {
          final chapter = widget.chapters[index];
          return GestureDetector(
            onTap: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => ChapterDetailScreen(
                  api: chapter.chapter_api_data!,
                  currentIndex: index,
                  chapters: widget.chapters,
                ),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: ShareColors.kPrimaryColor,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: widget.currentIndex == index
                  ? const ProgressWidget()
                  : Text(
                      chapter.chapter_name.toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }

  SafeArea _buildBody(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onDoubleTap: () {
          setState(() {
            _showPosition = !_showPosition;
          });
        },
        child: Obx(
          () {
            final path = _controller.chapter.value?.chapter_path ?? '';
            if (_controller.isLoading.value) {
              return const LoadingWidget();
            }
            return Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount:
                            _controller.chapter.value!.chapter_image!.length,
                        itemBuilder: (context, index) {
                          final image =
                              _controller.chapter.value!.chapter_image![index];
                          return CachedNetworkImage(
                            //height: 180,
                            imageUrl:
                                '${_controller.domainCND.value}/$path/${image.image_file}',
                            fit: BoxFit.cover,
                            placeholder: (context, url) => const ShimmerImage(),
                            errorWidget: (context, url, error) => const Icon(
                              Icons.error,
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Visibility(
                            visible: widget.currentIndex > 0,
                            child: IconButton(
                              color: ShareColors.kPrimaryColor,
                              onPressed: () {
                                final previousIndex = widget.currentIndex - 1;
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ChapterDetailScreen(
                                      api: widget.chapters[previousIndex]
                                          .chapter_api_data!,
                                      currentIndex: previousIndex,
                                      chapters: widget.chapters,
                                    ),
                                  ),
                                );
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios,
                              ),
                            ),
                          ),
                          Text(
                            'Chương ${_controller.chapter.value?.chapter_name}',
                          ),
                          Visibility(
                            visible: widget.currentIndex <
                                widget.chapters.length - 1,
                            child: IconButton(
                              color: ShareColors.kPrimaryColor,
                              onPressed: () {
                                final nextIndex = widget.currentIndex + 1;
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ChapterDetailScreen(
                                      api: widget.chapters[nextIndex]
                                          .chapter_api_data!,
                                      currentIndex: nextIndex,
                                      chapters: widget.chapters,
                                    ),
                                  ),
                                );
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                _showPosition
                    ? Positioned(
                        left: 10,
                        right: 10,
                        // top: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: ShareColors.kPrimaryColor,
                              ),
                            ),
                            Builder(
                              builder: (context) => IconButton(
                                onPressed: () {
                                  Scaffold.of(context).openEndDrawer();
                                },
                                icon: Icon(
                                  Icons.list,
                                  color: ShareColors.kPrimaryColor,
                                  size: 35,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    : const SizedBox(),
              ],
            );
          },
        ),
      ),
    );
  }
}
