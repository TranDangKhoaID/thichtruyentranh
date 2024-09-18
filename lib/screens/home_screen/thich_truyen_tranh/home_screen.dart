import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thichtruyentranh/common/constants.dart';
import 'package:thichtruyentranh/models/comic.dart';
import 'package:thichtruyentranh/screens/home_screen/controller/home_controller.dart';
import 'package:thichtruyentranh/screens/home_screen/widgets/shimmer_grid_items.dart';
import 'package:thichtruyentranh/widgets/shimmer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with AfterLayoutMixin {
  /// MARK: - Initials;
  //controller
  final _controller = Get.put(HomeController());

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    _controller
      ..getHomeComics()
      ..getCurrentlyComics()
      ..getCompleteComics()
      ..getCommingSoonComics();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(5),
          color: Colors.white,
          width: Get.width,
          child: SingleChildScrollView(
            child: Obx(
              () => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHomeComics(),
                  const Divider(),
                  _buildComics(
                    items: _controller.comics.value[1],
                    isLoading: _controller.isLoadings.value[1],
                    title: 'Đang phát hành',
                    onTap: () {},
                  ),
                  const Divider(),
                  _buildComics(
                    items: _controller.comics.value[2],
                    isLoading: _controller.isLoadings.value[2],
                    title: 'Hoàn thành',
                    onTap: () {},
                  ),
                  const Divider(),
                  _buildComics(
                    items: _controller.comics.value[3],
                    isLoading: _controller.isLoadings.value[3],
                    title: 'Sắp ra mắt',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHomeComics() {
    return Obx(() {
      final items = _controller.comics.value[0];
      if (_controller.isLoadings.value[0]) {
        return const ShimmerListItems(
          text: 'Truyện mới cập nhật',
        );
      }
      if (items.isEmpty) {
        return const Center(
          child: Text('Lỗi kết nối'),
        );
      }
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Row(
              children: [
                const Text(
                  'Truyện mới cập nhật',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    // final totalPages = _controller.totalPages.value[0];
                    // Get.to(
                    //   () => MoviesNewUpdateScreen(
                    //     totalPages: totalPages,
                    //   ),
                    // );
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final comic = items[index];
                return GestureDetector(
                  // onTap: () => Get.to(
                  //   () => MovieDetailScreen(slug: movie.slug!),
                  // ),
                  child: Container(
                    width: 130,
                    padding: const EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: CachedNetworkImage(
                            width: 130,
                            height: 160,
                            imageUrl:
                                '${Constants.CND_IMAGE}${comic.thumb_url}',
                            fit: BoxFit.cover,
                            placeholder: (context, url) => const ShimmerImage(),
                            errorWidget: (context, url, error) => const Icon(
                              Icons.error,
                            ),
                          ),
                        ),
                        Text(
                          comic.name ?? '',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: items.length,
            ),
          ),
        ],
      );
    });
  }

  //
  Widget _buildComics({
    required List<Comic> items,
    required bool isLoading,
    required String title,
    required void Function() onTap,
  }) {
    if (isLoading) {
      return ShimmerGridItems(
        text: title,
      );
    }
    if (items.isEmpty) {
      return const Center(
        child: Text('Lỗi kết nối'),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              IconButton(
                onPressed: onTap,
                icon: const Icon(
                  Icons.arrow_forward_ios,
                ),
              )
            ],
          ),
        ),
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.56,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final comic = items[index];
            return GestureDetector(
              // onTap: () => Get.to(
              //   () => MovieDetailScreen(slug: movie.slug!),
              // ),
              child: Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                        height: 160,
                        imageUrl: '${Constants.CND_IMAGE}${comic.thumb_url}',
                        fit: BoxFit.cover,
                        placeholder: (context, url) => const ShimmerImage(),
                        errorWidget: (context, url, error) => const Icon(
                          Icons.error,
                        ),
                      ),
                    ),
                    Text(
                      comic.name ?? '',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: 6,
        ),
      ],
    );
  }
}
