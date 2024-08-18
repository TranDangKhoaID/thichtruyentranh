import 'package:json_annotation/json_annotation.dart';
import 'package:thichtruyentranh/models/item.dart';

part 'home_response.g.dart';

@JsonSerializable()
class HomeResponse {
  final HomeData? data;

  HomeResponse({
    this.data,
  });

  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);
  Map<String, dynamic> toJson() => _$HomeResponseToJson(this);
}

@JsonSerializable()
class HomeData {
  final List<Item>? items;

  HomeData({
    this.items,
  });

  factory HomeData.fromJson(Map<String, dynamic> json) =>
      _$HomeDataFromJson(json);
  Map<String, dynamic> toJson() => _$HomeDataToJson(this);
}
