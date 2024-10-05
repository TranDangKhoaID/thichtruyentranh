import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import 'package:thichtruyentranh/boxes.dart';
import 'package:thichtruyentranh/common/constants.dart';
import 'package:thichtruyentranh/common/share_color.dart';
import 'package:thichtruyentranh/models/hive_local/comic_favorite.dart';
import 'package:thichtruyentranh/screens/chapter_detail_screen/chapter_detail_screen.dart';
import 'package:thichtruyentranh/screens/comic_detail_screen/controller/comic_detail_controller.dart';
import 'package:thichtruyentranh/screens/comic_detail_screen/widgets/title_and_content.dart';
import 'package:thichtruyentranh/widgets/loading_widget.dart';
import 'package:thichtruyentranh/widgets/shimmer.dart';
import 'package:thichtruyentranh/widgets/wrap_category.dart';

class ComicDetailScreen extends StatefulWidget {
  final String slug;
  const ComicDetailScreen({super.key, required this.slug});

  @override
  State<ComicDetailScreen> createState() => _ComicDetailScreenState();
}

class _ComicDetailScreenState extends State<ComicDetailScreen>
    with AfterLayoutMixin {
  /// MARK: - Initials;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final _controller = Get.put(ComicDetailController());
  //
  bool isHidden = false;
  bool isCheckHidden = true;
  List<String> items = [];
  List<String> beginningOfContent = [];
  String summaryContent = '';
  //
  void splitContent() {
    // làm chức năng chia nhỏ content để hiện 1 phần
    items = _controller.comic.value!.content!.split(' ');
    if (items.length >= 50) {
      isCheckHidden = false;
      isHidden = true;
      for (var i = 0; i < 35; i++) {
        beginningOfContent.add(items[i]);
      }
      summaryContent = beginningOfContent.join(' ');
      summaryContent = '$summaryContent ...';
    }
  }

  //
  Future<bool?> toggleFavorite({required bool isFavorite}) async {
    //
    final movie = ComicFavorite(
      name: _controller.comic.value!.name,
      thumb_url: _controller.comic.value!.thumb_url,
      slug: widget.slug,
      indexSelected: 0,
    );

    if (isFavorite) {
      await boxFavorites.delete('key${widget.slug}');
    } else {
      await boxFavorites.put('key${widget.slug}', movie);
    }

    // Trả về giá trị boolean mới
    return !isFavorite;
  }

  //
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    await _controller.getComicDetail(slug: widget.slug);
    splitContent();
  }

  @override
  Widget build(BuildContext context) {
    final isFavorite = boxFavorites.get('key${widget.slug}') != null;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: _globalKey,
        appBar: AppBar(
          title: Text('thichtruyentranh'),
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back_ios),
          ),
          bottom: TabBar(
            tabs: [Tab(text: 'Giới thiệu'), Tab(text: 'Chương')],
          ),
        ),
        body: TabBarView(
          children: [
            _buildInformation(
              context,
              isFavorite,
            ),
            _buildChapters(isFavorite),
          ],
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: ShareColors.kPrimaryColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text(
            isFavorite
                ? 'Chương ${boxFavorites.get('key${widget.slug}').indexSelected}'
                : 'Bắt đầu đọc',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Obx _buildChapters(bool isFavorite) {
    return Obx(
      () {
        final comic = _controller.comic.value;
        if (_controller.isLoading.value) {
          return LoadingWidget();
        }
        if (comic == null ||
            comic.chapters == null ||
            comic.chapters!.isEmpty) {
          return Center(
            child: Text('Đang cập nhật'),
          );
        }
        return ListView.separated(
          itemCount: comic.chapters![0].server_data!.length,
          itemBuilder: (context, index) {
            final reversed = comic.chapters![0].server_data!;
            final chapter = reversed[index];
            return InkWell(
              onTap: () async {
                if (isFavorite) {
                  final movie = ComicFavorite(
                    name: _controller.comic.value!.name,
                    thumb_url: _controller.comic.value!.thumb_url,
                    slug: widget.slug,
                    indexSelected: double.tryParse(chapter.chapter_name!),
                  );
                  await boxFavorites.put('key${widget.slug}', movie);
                }
                Get.to(
                  () => ChapterDetailScreen(
                    api: chapter.chapter_api_data ?? '',
                    currentIndex: index,
                    chapters: reversed,
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
                child: Text(
                  maxLines: 1,
                  'Chương ${chapter.chapter_name} ${chapter.chapter_title}',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(height: 1, thickness: 0.5);
          },
        );
      },
    );
  }

  Obx _buildInformation(BuildContext context, bool isFavorite) {
    return Obx(
      () {
        final comic = _controller.comic.value;
        if (_controller.isLoading.value) {
          return LoadingWidget();
        }
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: CachedNetworkImage(
                        height: 180,
                        imageUrl: '${Constants.CND_IMAGE}${comic!.thumb_url}',
                        fit: BoxFit.cover,
                        placeholder: (context, url) => const ShimmerImage(),
                        errorWidget: (context, url, error) => const Icon(
                          Icons.error,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            comic.name ?? '',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10),
                          WrapCategory(items: comic.category ?? []),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              LikeButton(
                                isLiked: isFavorite,
                                size: 30,
                                onTap: (isFavorite) => toggleFavorite(
                                  isFavorite: isFavorite,
                                ),
                                likeBuilder: (bool isLiked) {
                                  return Icon(
                                    isLiked
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: isLiked ? Colors.red : Colors.grey,
                                    size: 30,
                                  );
                                },
                              ),
                              Icon(Icons.share),
                              Icon(Icons.download)
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                TitleAndContent(
                  title: 'Nội dung',
                  content: isHidden ? summaryContent : comic.content ?? '',
                ),
                const SizedBox(
                  height: 5,
                ),
                isCheckHidden
                    ? const SizedBox()
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isHidden = !isHidden;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: MediaQuery.of(context).size.width * 0.25,
                              height: 20,
                              decoration: BoxDecoration(
                                color: ShareColors.kPrimaryColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                isHidden ? 'Xem thêm' : 'Rút gọn',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
