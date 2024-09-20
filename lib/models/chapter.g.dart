// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Chapter _$ChapterFromJson(Map<String, dynamic> json) => Chapter(
      filename: json['filename'] as String?,
      chapter_name: json['chapter_name'] as String?,
      chapter_title: json['chapter_title'] as String?,
      chapter_api_data: json['chapter_api_data'] as String?,
    );

Map<String, dynamic> _$ChapterToJson(Chapter instance) => <String, dynamic>{
      'filename': instance.filename,
      'chapter_name': instance.chapter_name,
      'chapter_title': instance.chapter_title,
      'chapter_api_data': instance.chapter_api_data,
    };
