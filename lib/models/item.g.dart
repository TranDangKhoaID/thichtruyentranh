// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      id: json['id'] as String?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      originName: (json['originName'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      status: json['status'] as String?,
      thumbUrl: json['thumbUrl'] as String?,
      subDocquyen: json['subDocquyen'] as bool?,
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      updatedAt: json['updatedAt'] as String?,
      chaptersLatest: (json['chaptersLatest'] as List<dynamic>?)
          ?.map((e) => ChapterLatest.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'originName': instance.originName,
      'status': instance.status,
      'thumbUrl': instance.thumbUrl,
      'subDocquyen': instance.subDocquyen,
      'category': instance.category,
      'updatedAt': instance.updatedAt,
      'chaptersLatest': instance.chaptersLatest,
    };
