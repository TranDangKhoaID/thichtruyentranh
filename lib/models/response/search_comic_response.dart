import 'package:json_annotation/json_annotation.dart';
import 'package:thichtruyentranh/models/comic.dart';

part 'search_comic_response.g.dart';

@JsonSerializable()
class SearchComicResponse {
  Data? data;

  SearchComicResponse({this.data});

  factory SearchComicResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchComicResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SearchComicResponseToJson(this);
}

@JsonSerializable()
class Data {
  List<Comic>? items;

  Data({this.items});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}
