import 'package:json_annotation/json_annotation.dart';
import 'package:thichtruyentranh/models/category.dart';
import 'package:thichtruyentranh/models/chapter_latest.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  String? id;
  String? name;
  String? slug;
  List<String>? originName;
  String? status;
  String? thumbUrl;
  bool? subDocquyen;
  List<Category>? category;
  String? updatedAt;
  List<ChapterLatest>? chaptersLatest;

  Item({
    this.id,
    this.name,
    this.slug,
    this.originName,
    this.status,
    this.thumbUrl,
    this.subDocquyen,
    this.category,
    this.updatedAt,
    this.chaptersLatest,
  });

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
