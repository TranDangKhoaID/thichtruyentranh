import 'package:flutter/material.dart';
import 'package:thichtruyentranh/screens/home_screen/thich_truyen_tranh/home_screen.dart';
import 'package:thichtruyentranh/screens/main_screen/main_screen.dart';
import 'package:thichtruyentranh/screens/splash_screen/thich_truyen_tranh/splash_screen.dart';

class AppRoute {
  /// MARK: - Initials;
  static const String splashScreen = '/splash-screen';
  static const String mainScreen = '/main-screen';
  static const String homeScreen = '/home-screen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(
          builder: (_) => SplashScreen.provider(),
          settings: settings,
        );
      case mainScreen:
        return MaterialPageRoute(
          builder: (_) => MainScreen.provider(),
          settings: settings,
        );
      case homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
          settings: settings,
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('error'),
          centerTitle: true,
        ),
        body: Center(
          child: Text('page_not_found'),
        ),
      );
    });
  }
}
