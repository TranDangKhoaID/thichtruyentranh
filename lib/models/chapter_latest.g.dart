// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_latest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChapterLatest _$ChapterLatestFromJson(Map<String, dynamic> json) =>
    ChapterLatest(
      filename: json['filename'] as String?,
      chapterName: json['chapterName'] as String?,
      chapterTitle: json['chapterTitle'] as String?,
      chapterApiData: json['chapterApiData'] as String?,
    );

Map<String, dynamic> _$ChapterLatestToJson(ChapterLatest instance) =>
    <String, dynamic>{
      'filename': instance.filename,
      'chapterName': instance.chapterName,
      'chapterTitle': instance.chapterTitle,
      'chapterApiData': instance.chapterApiData,
    };
