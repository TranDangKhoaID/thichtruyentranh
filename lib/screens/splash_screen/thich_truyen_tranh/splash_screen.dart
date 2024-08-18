import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thichtruyentranh/screens/splash_screen/cubit/splash_cubit.dart';

class SplashScreen extends StatefulWidget {
  /// MARK: - Initials;
  static BlocProvider<SplashCubit> provider() {
    return BlocProvider(
      create: (context) => SplashCubit(),
      child: const SplashScreen(),
    );
  }

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with AfterLayoutMixin {
  /// MARK: - Initials

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) {
    context.read<SplashCubit>().getConfigs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: CircularProgressIndicator(),
      ),
    );
  }
}
