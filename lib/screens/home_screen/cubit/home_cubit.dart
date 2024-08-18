import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:thichtruyentranh/locator.dart';
import 'package:thichtruyentranh/models/item.dart';
import 'package:thichtruyentranh/repositories/data_repository.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  /// MARK: - Initials;
  final dataRepository = locator<DataRepository>();

  HomeCubit() : super(const HomeStateInitial(HomeStateData()));

  /// Get home page
  Future<void> getHomeItems() async {
    final homeResponse = await dataRepository.getHome();
    final items = homeResponse.data!.items ?? [];
    emit(GetHomeItems(state.data.copyWith(items: items)));
    debugPrint('hê' + homeResponse.data!.items.toString());
  }
}
