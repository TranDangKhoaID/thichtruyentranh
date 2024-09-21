// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChapterDetailResponse _$ChapterDetailResponseFromJson(
        Map<String, dynamic> json) =>
    ChapterDetailResponse(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChapterDetailResponseToJson(
        ChapterDetailResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      item: json['item'] == null
          ? null
          : ChapterDetail.fromJson(json['item'] as Map<String, dynamic>),
      domain_cdn: json['domain_cdn'] as String?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'domain_cdn': instance.domain_cdn,
      'item': instance.item,
    };
