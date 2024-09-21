import 'package:thichtruyentranh/models/chapter_detail.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chapter_detail_response.g.dart';

@JsonSerializable()
class ChapterDetailResponse {
  Data? data;

  ChapterDetailResponse({this.data});

  factory ChapterDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$ChapterDetailResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ChapterDetailResponseToJson(this);
}

@JsonSerializable()
class Data {
  String? domain_cdn;
  ChapterDetail? item;

  Data({this.item, this.domain_cdn});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}
