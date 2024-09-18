// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comics_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ComicsResponse _$ComicsResponseFromJson(Map<String, dynamic> json) =>
    ComicsResponse(
      data: json['data'] == null
          ? null
          : HomeData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ComicsResponseToJson(ComicsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

HomeData _$HomeDataFromJson(Map<String, dynamic> json) => HomeData(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Comic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeDataToJson(HomeData instance) => <String, dynamic>{
      'items': instance.items,
    };
