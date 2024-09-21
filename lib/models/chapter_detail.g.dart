// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChapterDetail _$ChapterDetailFromJson(Map<String, dynamic> json) =>
    ChapterDetail(
      comic_name: json['comic_name'] as String?,
      chapter_name: json['chapter_name'] as String?,
      chapter_title: json['chapter_title'] as String?,
      chapter_path: json['chapter_path'] as String?,
      chapter_image: (json['chapter_image'] as List<dynamic>?)
          ?.map((e) => ChapterImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChapterDetailToJson(ChapterDetail instance) =>
    <String, dynamic>{
      'comic_name': instance.comic_name,
      'chapter_name': instance.chapter_name,
      'chapter_title': instance.chapter_title,
      'chapter_path': instance.chapter_path,
      'chapter_image': instance.chapter_image,
    };

ChapterImage _$ChapterImageFromJson(Map<String, dynamic> json) => ChapterImage(
      image_page: (json['image_page'] as num?)?.toInt(),
      image_file: json['image_file'] as String?,
    );

Map<String, dynamic> _$ChapterImageToJson(ChapterImage instance) =>
    <String, dynamic>{
      'image_page': instance.image_page,
      'image_file': instance.image_file,
    };
