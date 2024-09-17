// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Chapter _$ChapterFromJson(Map<String, dynamic> json) => Chapter(
      filename: json['filename'] as String?,
      chapterName: json['chapterName'] as String?,
      chapterTitle: json['chapterTitle'] as String?,
      chapterApiData: json['chapterApiData'] as String?,
    );

Map<String, dynamic> _$ChapterToJson(Chapter instance) => <String, dynamic>{
      'filename': instance.filename,
      'chapterName': instance.chapterName,
      'chapterTitle': instance.chapterTitle,
      'chapterApiData': instance.chapterApiData,
    };
