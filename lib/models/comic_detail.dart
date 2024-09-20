import 'package:json_annotation/json_annotation.dart';
import 'package:thichtruyentranh/models/category.dart';
import 'package:thichtruyentranh/models/chapter.dart';

part 'comic_detail.g.dart';

@JsonSerializable()
class ComicDetail {
  final String? name;
  final String? slug;
  final List<String>? origin_name;
  final String? content;
  final String? status;
  final String? thumb_url;
  final List<String>? author;
  final List<Category>? category;
  final List<ServerData>? chapters;
  final String? updatedAt;

  ComicDetail({
    this.name,
    this.slug,
    this.origin_name,
    this.content,
    this.status,
    this.thumb_url,
    this.author,
    this.category,
    this.chapters,
    this.updatedAt,
  });

  factory ComicDetail.fromJson(Map<String, dynamic> json) =>
      _$ComicDetailFromJson(json);
  Map<String, dynamic> toJson() => _$ComicDetailToJson(this);
}

@JsonSerializable()
class ServerData {
  String? server_name;
  List<Chapter>? server_data;

  ServerData({
    this.server_name,
    this.server_data,
  });

  factory ServerData.fromJson(Map<String, dynamic> json) =>
      _$ServerDataFromJson(json);
  Map<String, dynamic> toJson() => _$ServerDataToJson(this);
}
