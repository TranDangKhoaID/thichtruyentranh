import 'package:json_annotation/json_annotation.dart';

part 'chapter.g.dart';

@JsonSerializable()
class Chapter {
  String? filename;
  String? chapterName;
  String? chapterTitle;
  String? chapterApiData;

  Chapter({
    this.filename,
    this.chapterName,
    this.chapterTitle,
    this.chapterApiData,
  });

  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);
  Map<String, dynamic> toJson() => _$ChapterToJson(this);
}
