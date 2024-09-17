import 'package:json_annotation/json_annotation.dart';
import 'package:thichtruyentranh/models/category.dart';
import 'package:thichtruyentranh/models/chapter.dart';

part 'comic.g.dart';

@JsonSerializable()
class Comic {
  String? id;
  String? name;
  String? slug;
  List<String>? origin_name;
  String? status;
  String? thumb_url;
  bool? sub_docquyen;
  List<Category>? category;
  String? updatedAt;
  List<Chapter>? chaptersLatest;

  Comic({
    this.id,
    this.name,
    this.slug,
    this.origin_name,
    this.status,
    this.thumb_url,
    this.sub_docquyen,
    this.category,
    this.updatedAt,
    this.chaptersLatest,
  });

  factory Comic.fromJson(Map<String, dynamic> json) => _$ComicFromJson(json);
  Map<String, dynamic> toJson() => _$ComicToJson(this);
}
