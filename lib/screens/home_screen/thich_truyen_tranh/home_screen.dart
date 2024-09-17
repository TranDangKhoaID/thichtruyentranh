import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thichtruyentranh/screens/home_screen/controller/home_controller.dart';
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
    _controller.getHomeComics();
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHomeComics(),
              ],
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
        // return ShimmerListItems(
        //   text: 'Phim mới cập nhật',
        // );
        return CircularProgressIndicator();
      }
      if (items.isEmpty) {
        return Center(
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
                  'Truyện mới cập nhật',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    // final totalPages = _controller.totalPages.value[0];
                    // Get.to(
                    //   () => MoviesNewUpdateScreen(
                    //     totalPages: totalPages,
                    //   ),
                    // );
                  },
                  icon: Icon(
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
                    padding: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: CachedNetworkImage(
                            width: 130,
                            height: 160,
                            imageUrl:
                                'https://img.otruyenapi.com/uploads/comics/${comic.thumb_url}',
                            fit: BoxFit.cover,
                            placeholder: (context, url) => const ShimmerImage(),
                            errorWidget: (context, url, error) => Icon(
                              Icons.error,
                            ),
                          ),
                        ),
                        Text(
                          comic.name ?? '',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
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
}
