import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:number_paginator/number_paginator.dart';
import 'package:thichtruyentranh/common/constants.dart';
import 'package:thichtruyentranh/common/share_color.dart';
import 'package:thichtruyentranh/extensions/string.dart';
import 'package:thichtruyentranh/screens/comics_screen/controller/comics_controller.dart';
import 'package:thichtruyentranh/screens/comics_screen/widgets/shimmer_item.dart';
import 'package:thichtruyentranh/widgets/shimmer.dart';
import 'package:thichtruyentranh/widgets/wrap_category.dart';

class ComicsScreen extends StatefulWidget {
  final String type;

  final String? title;
  const ComicsScreen({
    super.key,
    required this.type,
    this.title,
  });

  @override
  State<ComicsScreen> createState() => _ComicsScreenState();
}

class _ComicsScreenState extends State<ComicsScreen> with AfterLayoutMixin {
  //
  final _controller = Get.put(ComicsController());
  int _page = 1;
  //
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    _controller.getComics(page: _page, type: widget.type);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? ''),
      ),
      body: Column(
        children: [
          NumberPaginator(
            numberPages: 10,
            onPageChange: (index) {
              setState(() {
                _page = index + 1;
              });
              _controller.comics.value.clear();
              _controller.getComics(
                page: _page,
                type: widget.type,
              );
            },
            config: NumberPaginatorUIConfig(
              buttonSelectedBackgroundColor: ShareColors.kPrimaryColor,
            ),
          ),
          Expanded(
            child: Obx(
              () {
                if (_controller.isLoading.value) {
                  return ShimmerItem();
                }
                if (_controller.comics.value.isEmpty) {
                  return Center(child: Text('No comics available'));
                }
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      final comic = _controller.comics.value[index];
                      return GestureDetector(
                        // onTap: () => Get.to(
                        //   () => MovieDetailScreen(slug: movie.slug!),
                        // ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
                                  child: CachedNetworkImage(
                                    //height: 200,
                                    imageUrl:
                                        '${Constants.CND_IMAGE}/${comic.thumb_url}',
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) =>
                                        const ShimmerImage(),
                                    errorWidget: (context, url, error) => Icon(
                                      Icons.error,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      comic.name ?? '',
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Cập nhật lúc: ${formattedStringDateTime(comic.updatedAt ?? '')}',
                                      overflow: TextOverflow.clip,
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    WrapCategory(
                                      items: comic.category ?? [],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: _controller.comics.value.length,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
