import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thichtruyentranh/routes.dart';
import 'package:get/get.dart';

part 'splash_cubit.freezed.dart';
part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashStateInitial());

  Future<void> getConfigs() async {
    Get.offAllNamed(AppRoute.mainScreen);
  }
}
