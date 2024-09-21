import 'package:json_annotation/json_annotation.dart';
import 'package:thichtruyentranh/models/comic_detail.dart';

part 'comic_detail_response.g.dart';

@JsonSerializable()
class ComicDetailResponse {
  final Data? data;

  ComicDetailResponse({this.data});

  factory ComicDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$ComicDetailResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ComicDetailResponseToJson(this);
}

@JsonSerializable()
class Data {
  final ComicDetail? item;

  Data({this.item});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}
