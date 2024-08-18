import 'package:json_annotation/json_annotation.dart';

part 'chapter_latest.g.dart';

@JsonSerializable()
class ChapterLatest {
  String? filename;
  String? chapterName;
  String? chapterTitle;
  String? chapterApiData;

  ChapterLatest({
    this.filename,
    this.chapterName,
    this.chapterTitle,
    this.chapterApiData,
  });

  factory ChapterLatest.fromJson(Map<String, dynamic> json) =>
      _$ChapterLatestFromJson(json);
  Map<String, dynamic> toJson() => _$ChapterLatestToJson(this);
}
