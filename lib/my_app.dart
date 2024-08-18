import 'package:flutter/material.dart';
import 'package:thichtruyentranh/routes.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  /// MARK: - Initials;
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoute.generateRoute,
      navigatorKey: Get.key,
      initialRoute: AppRoute.splashScreen,
    );
  }
}
