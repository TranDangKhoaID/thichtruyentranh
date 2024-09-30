import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:thichtruyentranh/boxes.dart';
import 'package:thichtruyentranh/common/constants.dart';
import 'package:thichtruyentranh/models/hive_local/comic_favorite.dart';
import 'package:thichtruyentranh/screens/comic_detail_screen/comic_detail_screen.dart';
import 'package:thichtruyentranh/widgets/shimmer.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Truyện đã lưu'),
        centerTitle: true,
      ),
      body: _buildBody(),
    );
  }

  ValueListenableBuilder<Box<dynamic>> _buildBody() {
    return ValueListenableBuilder(
      valueListenable: boxFavorites.listenable(),
      builder: (context, box, _) {
        if (boxFavorites.isEmpty) {
          return Center(
            child: Text(
              'Bạn chưa lưu truyện nào',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.grey,
              ),
            ),
          );
        }
        return Padding(
          padding: EdgeInsets.all(5),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 0.55,
            ),
            // shrinkWrap: true,
            // physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final ComicFavorite movie = boxFavorites.getAt(index);
              return GestureDetector(
                onTap: () => Get.to(
                  () => ComicDetailScreen(
                    slug: movie.slug!,
                    //indexSelected: movie.indexSelected,
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: _buildCachedNetWorldImage(movie),
                      ),
                      Text(
                        movie.name ?? '',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Chương ${movie.indexSelected! + 1}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: boxFavorites.length,
          ),
        );
      },
    );
  }

  Widget _buildCachedNetWorldImage(ComicFavorite comic) {
    return CachedNetworkImage(
      height: 160,
      imageUrl: '${Constants.CND_IMAGE}${comic.thumb_url}',
      fit: BoxFit.cover,
      placeholder: (context, url) => const ShimmerImage(),
      errorWidget: (context, url, error) => Icon(Icons.error),
    );
  }
}
