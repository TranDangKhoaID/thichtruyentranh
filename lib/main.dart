import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:thichtruyentranh/boxes.dart';
import 'package:thichtruyentranh/di.dart';
import 'package:thichtruyentranh/models/hive_local/comic_favorite.dart';
import 'package:thichtruyentranh/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //hive
  await Hive.initFlutter();
  //Hive.registerAdapter(MovieHistoryAdapter());
  Hive.registerAdapter(ComicFavoriteAdapter());
  //boxHistories = await Hive.openBox<MovieHistory>('histories');
  boxFavorites = await Hive.openBox<ComicFavorite>('favorites');
  DependencyInjection.init();

  runApp(const MyApp());
}
