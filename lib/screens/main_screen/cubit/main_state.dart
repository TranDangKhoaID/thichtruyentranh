part of 'main_cubit.dart';

@freezed
class MainStateData with _$MainStateData {
  const factory MainStateData({
    @Default(0) int tabIndex,
  }) = _MainStateData;
}

@freezed
class MainState with _$MainState {
  const factory MainState.initial(MainStateData data) = MainStateInitial;
  const factory MainState.changeTabIndex(MainStateData data) = ChangeTabIndex;
}
