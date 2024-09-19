// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComicDetailResponse _$ComicDetailResponseFromJson(Map<String, dynamic> json) =>
    ComicDetailResponse(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ComicDetailResponseToJson(
        ComicDetailResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      item: json['item'] == null
          ? null
          : ComicDetail.fromJson(json['item'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'item': instance.item,
    };
