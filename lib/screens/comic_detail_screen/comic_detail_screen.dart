import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thichtruyentranh/screens/comic_detail_screen/controller/comic_detail_controller.dart';

class ComicDetailScreen extends StatefulWidget {
  final String slug;
  const ComicDetailScreen({super.key, required this.slug});

  @override
  State<ComicDetailScreen> createState() => _ComicDetailScreenState();
}

class _ComicDetailScreenState extends State<ComicDetailScreen>
    with AfterLayoutMixin {
  //
  final _controller = Get.put(ComicDetailController());
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    await _controller.getComicDetail(slug: widget.slug);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () {
            if (_controller.isLoading.value) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text(_controller.comic.value!.name ?? '')],
            );
          },
        ),
      ),
    );
  }
}
