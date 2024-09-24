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

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    await _controller.getChapter(api: widget.api);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () {
            final path = _controller.chapter.value?.chapter_path ?? '';
            if (_controller.isLoading.value) {
              return LoadingWidget();
            }

            return SingleChildScrollView(
              child: Column(
                children: [
                  ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: _controller.chapter.value!.chapter_image!.length,
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
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          icon: Icon(
                            Icons.arrow_back_ios,
                          ),
                        ),
                      ),
                      Text(
                        'Chương ${_controller.chapter.value?.chapter_name}',
                      ),
                      Visibility(
                        visible:
                            widget.currentIndex < widget.chapters.length - 1,
                        child: IconButton(
                          color: ShareColors.kPrimaryColor,
                          onPressed: () {
                            final nextIndex = widget.currentIndex + 1;
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChapterDetailScreen(
                                  api: widget
                                      .chapters[nextIndex].chapter_api_data!,
                                  currentIndex: nextIndex,
                                  chapters: widget.chapters,
                                ),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
