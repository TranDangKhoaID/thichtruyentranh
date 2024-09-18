import 'package:json_annotation/json_annotation.dart';
import 'package:thichtruyentranh/models/comic.dart';

part 'comics_response.g.dart';

@JsonSerializable()
class ComicsResponse {
  final HomeData? data;

  ComicsResponse({
    this.data,
  });

  factory ComicsResponse.fromJson(Map<String, dynamic> json) =>
      _$ComicsResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ComicsResponseToJson(this);
}

@JsonSerializable()
class HomeData {
  final List<Comic>? items;

  HomeData({
    this.items,
  });

  factory HomeData.fromJson(Map<String, dynamic> json) =>
      _$HomeDataFromJson(json);
  Map<String, dynamic> toJson() => _$HomeDataToJson(this);
}
