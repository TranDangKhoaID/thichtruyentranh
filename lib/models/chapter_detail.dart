import 'package:json_annotation/json_annotation.dart';

part 'chapter_detail.g.dart';

@JsonSerializable()
class ChapterDetail {
  String? comic_name;
  String? chapter_name;
  String? chapter_title;
  String? chapter_path;
  List<ChapterImage>? chapter_image;

  ChapterDetail({
    this.comic_name,
    this.chapter_name,
    this.chapter_title,
    this.chapter_path,
    this.chapter_image,
  });

  factory ChapterDetail.fromJson(Map<String, dynamic> json) =>
      _$ChapterDetailFromJson(json);
  Map<String, dynamic> toJson() => _$ChapterDetailToJson(this);
}

@JsonSerializable()
class ChapterImage {
  int? image_page;
  String? image_file;

  ChapterImage({
    this.image_page,
    this.image_file,
  });

  factory ChapterImage.fromJson(Map<String, dynamic> json) =>
      _$ChapterImageFromJson(json);
  Map<String, dynamic> toJson() => _$ChapterImageToJson(this);
}
