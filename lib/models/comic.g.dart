// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Comic _$ComicFromJson(Map<String, dynamic> json) => Comic(
      id: json['id'] as String?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      origin_name: (json['origin_name'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      status: json['status'] as String?,
      thumb_url: json['thumb_url'] as String?,
      sub_docquyen: json['sub_docquyen'] as bool?,
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      updatedAt: json['updatedAt'] as String?,
      chaptersLatest: (json['chaptersLatest'] as List<dynamic>?)
          ?.map((e) => Chapter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ComicToJson(Comic instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'origin_name': instance.origin_name,
      'status': instance.status,
      'thumb_url': instance.thumb_url,
      'sub_docquyen': instance.sub_docquyen,
      'category': instance.category,
      'updatedAt': instance.updatedAt,
      'chaptersLatest': instance.chaptersLatest,
    };
