// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_comic_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchComicResponse _$SearchComicResponseFromJson(Map<String, dynamic> json) =>
    SearchComicResponse(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchComicResponseToJson(
        SearchComicResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Comic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'items': instance.items,
    };
