// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComicDetail _$ComicDetailFromJson(Map<String, dynamic> json) => ComicDetail(
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      origin_name: (json['origin_name'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      content: json['content'] as String?,
      status: json['status'] as String?,
      author:
          (json['author'] as List<dynamic>?)?.map((e) => e as String).toList(),
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      chapters: (json['chapters'] as List<dynamic>?)
          ?.map((e) => Chapter.fromJson(e as Map<String, dynamic>))
          .toList(),
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$ComicDetailToJson(ComicDetail instance) =>
    <String, dynamic>{
      'name': instance.name,
      'slug': instance.slug,
      'origin_name': instance.origin_name,
      'content': instance.content,
      'status': instance.status,
      'author': instance.author,
      'category': instance.category,
      'chapters': instance.chapters,
      'updatedAt': instance.updatedAt,
    };
