import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:thichtruyentranh/common/constants.dart';
import 'package:thichtruyentranh/models/comic.dart';
import 'package:thichtruyentranh/screens/comic_detail_screen/comic_detail_screen.dart';
import 'package:thichtruyentranh/screens/comics_screen/comics_screen.dart';
import 'package:thichtruyentranh/screens/home_screen/controller/home_controller.dart';
import 'package:thichtruyentranh/screens/home_screen/widgets/shimmer_grid_items.dart';
import 'package:thichtruyentranh/widgets/loading_widget.dart';
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
  bool _isSearching = false;

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    _controller
      ..getHomeComics()
      //..getCurrentlyComics()
      ..getCompleteComics()
      ..getCommingSoonComics();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      appBar: _buildAppbar(),
      body: Container(
        padding: const EdgeInsets.all(5),
        color: Colors.white,
        width: Get.width,
        child: SingleChildScrollView(
          child: Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //_buildHomeComics(),
                _buildComics(
                  items: _controller.comics.value[0],
                  isLoading: _controller.isLoadings.value[0],
                  title: 'Truyện mới cập nhật',
                  onTap: () => Get.to(
                    () => ComicsScreen(
                      type: 'truyen-moi',
                      //totalPages: _controller.totalPages.value[1],
                      title: 'Truyện mới',
                    ),
                  ),
                ),
                const Divider(),
                _buildComics(
                  items: _controller.comics.value[2],
                  isLoading: _controller.isLoadings.value[2],
                  title: 'Hoàn thành',
                  onTap: () => Get.to(
                    () => const ComicsScreen(
                      type: 'truyen-moi',
                      title: 'Hoàn thành',
                    ),
                  ),
                ),
                const Divider(),
                _buildComics(
                  items: _controller.comics.value[3],
                  isLoading: _controller.isLoadings.value[3],
                  title: 'Sắp ra mắt',
                  onTap: () => Get.to(
                    () => ComicsScreen(
                      type: 'sap-ra-mat',
                      title: 'Sắp ra mắt',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar _buildAppbar() {
    return AppBar(
      title: !_isSearching
          ? Row(
              children: const [
                SizedBox(height: 10),
                Text(
                  'Đọc Truyện',
                ),
              ],
            )
          : TypeAheadField<Comic>(
              suggestionsCallback: (search) async {
                return await _controller.searchComics(name: search);
              },
              loadingBuilder: (context) => LoadingWidget(),
              //emptyBuilder: (context) => Text('Hãy nhập tên phim đúng'),
              builder: (context, controller, focusNode) {
                return TextField(
                  controller: controller,
                  autofocus: true,
                  focusNode: focusNode,
                  decoration: const InputDecoration(
                    hintText: 'Nhập tên truyện...',
                    border: InputBorder.none,
                  ),
                  style: TextStyle(color: Colors.black),
                );
              },
              itemBuilder: (context, comic) {
                return ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: CachedNetworkImage(
                      width: 80,
                      //height: 80,
                      imageUrl: '${Constants.CND_IMAGE}${comic.thumb_url}',
                      fit: BoxFit.cover,
                      placeholder: (context, url) => const ShimmerImage(),
                      errorWidget: (context, url, error) => Icon(
                        Icons.error,
                      ),
                    ),
                  ),
                  title: Text(
                    '${comic.name}',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  subtitle: Text(
                    comic.chaptersLatest?.first.chapter_name ?? '',
                  ),
                );
              },
              onSelected: (movie) => Get.to(
                () => ComicDetailScreen(slug: movie.slug!),
              ),
            ),
      elevation: 0,
      //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      actions: [
        IconButton(
          onPressed: () {
            setState(() {
              _isSearching = !_isSearching;
              // if (!_isSearching) {
              //   _searchController.clear();
              // }
            });
          },
          icon: Icon(
            _isSearching ? Icons.close : Icons.search,
          ),
        ),
      ],
    );
  }

  Widget _buildComics({
    required List<Comic> items,
    required bool isLoading,
    required String title,
    required void Function() onTap,
  }) {
    if (isLoading) {
      return ShimmerListItems(
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
                style: TextStyle(
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
        SizedBox(
          height: 230,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final comic = items[index];
              return GestureDetector(
                onTap: () => Get.to(
                  () => ComicDetailScreen(slug: comic.slug!),
                ),
                child: Container(
                  width: 130,
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: CachedNetworkImage(
                          width: 130,
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
                      Text(
                        'Chap ${comic.chaptersLatest?.first.chapter_name}',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
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
  }

  //
  // Widget _buildComics({
  //   required List<Comic> items,
  //   required bool isLoading,
  //   required String title,
  //   required void Function() onTap,
  // }) {
  //   if (isLoading) {
  //     return ShimmerGridItems(
  //       text: title,
  //     );
  //   }
  //   if (items.isEmpty) {
  //     return const Center(
  //       child: Text('Lỗi kết nối'),
  //     );
  //   }
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.center,
  //     children: [
  //       Padding(
  //         padding: const EdgeInsets.only(left: 5),
  //         child: Row(
  //           children: [
  //             Text(
  //               title,
  //               style: const TextStyle(
  //                 fontSize: 17,
  //                 fontWeight: FontWeight.w600,
  //               ),
  //             ),
  //             const Spacer(),
  //             IconButton(
  //               onPressed: onTap,
  //               icon: const Icon(
  //                 Icons.arrow_forward_ios,
  //               ),
  //             )
  //           ],
  //         ),
  //       ),
  //       GridView.builder(
  //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //           crossAxisCount: 3,
  //           childAspectRatio: 0.55,
  //         ),
  //         shrinkWrap: true,
  //         physics: const NeverScrollableScrollPhysics(),
  //         itemBuilder: (context, index) {
  //           final comic = items[index];
  //           return GestureDetector(
  //             // onTap: () => Get.to(
  //             //   () => MovieDetailScreen(slug: movie.slug!),
  //             // ),
  //             child: Container(
  //               padding: const EdgeInsets.all(5),
  //               child: Column(
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: [
  //                   ClipRRect(
  //                     borderRadius: BorderRadius.circular(5),
  //                     child: CachedNetworkImage(
  //                       width: 100,
  //                       height: 150,
  //                       imageUrl: '${Constants.CND_IMAGE}${comic.thumb_url}',
  //                       fit: BoxFit.cover,
  //                       placeholder: (context, url) => const ShimmerImage(),
  //                       errorWidget: (context, url, error) => const Icon(
  //                         Icons.error,
  //                       ),
  //                     ),
  //                   ),
  //                   Text(
  //                     comic.name ?? '',
  //                     maxLines: 2,
  //                     overflow: TextOverflow.ellipsis,
  //                     style: const TextStyle(
  //                       fontSize: 13,
  //                       fontWeight: FontWeight.w600,
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           );
  //         },
  //         itemCount: 6,
  //       ),
  //     ],
  //   );
  //}
}
