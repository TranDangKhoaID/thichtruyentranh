import 'package:flutter/material.dart';
import 'package:thichtruyentranh/locator.dart';
import 'package:thichtruyentranh/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  runApp(const MyApp());
}
