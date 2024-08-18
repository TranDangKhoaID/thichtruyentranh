part of 'home_cubit.dart';

@freezed
class HomeStateData with _$HomeStateData {
  const factory HomeStateData({
    @Default([]) List<Item> items,
    @Default(false) bool isLoading,
  }) = _HomeStateData;
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial(HomeStateData data) = HomeStateInitial;
  const factory HomeState.getHomeItems(HomeStateData data) = GetHomeItems;
  const factory HomeState.showLoading(HomeStateData data) = ShowLoading;
}
