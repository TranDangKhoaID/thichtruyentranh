import 'package:hive/hive.dart';

part 'comic_favorite.g.dart';

@HiveType(typeId: 0)
class ComicFavorite {
  @HiveField(0)
  final String? name;

  @HiveField(1)
  final String? slug;

  @HiveField(2)
  final String? thumb_url;

  @HiveField(3)
  final int? indexSelected;

  ComicFavorite({
    this.name,
    this.slug,
    this.thumb_url,
    this.indexSelected,
  });
}
