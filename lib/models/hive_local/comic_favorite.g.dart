// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_favorite.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ComicFavoriteAdapter extends TypeAdapter<ComicFavorite> {
  @override
  final int typeId = 0;

  @override
  ComicFavorite read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ComicFavorite(
      name: fields[0] as String?,
      slug: fields[1] as String?,
      thumb_url: fields[2] as String?,
      indexSelected: fields[3] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, ComicFavorite obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.slug)
      ..writeByte(2)
      ..write(obj.thumb_url)
      ..writeByte(3)
      ..write(obj.indexSelected);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ComicFavoriteAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
