import 'package:json_annotation/json_annotation.dart';

part 'chapter.g.dart';

@JsonSerializable()
class Chapter {
  String? filename;
  String? chapter_name;
  String? chapter_title;
  String? chapter_api_data;

  Chapter({
    this.filename,
    this.chapter_name,
    this.chapter_title,
    this.chapter_api_data,
  });

  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);
  Map<String, dynamic> toJson() => _$ChapterToJson(this);
}
