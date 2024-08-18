// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeStateData {
  List<Item> get items => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateDataCopyWith<HomeStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateDataCopyWith<$Res> {
  factory $HomeStateDataCopyWith(
          HomeStateData value, $Res Function(HomeStateData) then) =
      _$HomeStateDataCopyWithImpl<$Res, HomeStateData>;
  @useResult
  $Res call({List<Item> items, bool isLoading});
}

/// @nodoc
class _$HomeStateDataCopyWithImpl<$Res, $Val extends HomeStateData>
    implements $HomeStateDataCopyWith<$Res> {
  _$HomeStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateDataImplCopyWith<$Res>
    implements $HomeStateDataCopyWith<$Res> {
  factory _$$HomeStateDataImplCopyWith(
          _$HomeStateDataImpl value, $Res Function(_$HomeStateDataImpl) then) =
      __$$HomeStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Item> items, bool isLoading});
}

/// @nodoc
class __$$HomeStateDataImplCopyWithImpl<$Res>
    extends _$HomeStateDataCopyWithImpl<$Res, _$HomeStateDataImpl>
    implements _$$HomeStateDataImplCopyWith<$Res> {
  __$$HomeStateDataImplCopyWithImpl(
      _$HomeStateDataImpl _value, $Res Function(_$HomeStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? isLoading = null,
  }) {
    return _then(_$HomeStateDataImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeStateDataImpl implements _HomeStateData {
  const _$HomeStateDataImpl(
      {final List<Item> items = const [], this.isLoading = false})
      : _items = items;

  final List<Item> _items;
  @override
  @JsonKey()
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'HomeStateData(items: $items, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateDataImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_items), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateDataImplCopyWith<_$HomeStateDataImpl> get copyWith =>
      __$$HomeStateDataImplCopyWithImpl<_$HomeStateDataImpl>(this, _$identity);
}

abstract class _HomeStateData implements HomeStateData {
  const factory _HomeStateData({final List<Item> items, final bool isLoading}) =
      _$HomeStateDataImpl;

  @override
  List<Item> get items;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateDataImplCopyWith<_$HomeStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  HomeStateData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeStateData data) initial,
    required TResult Function(HomeStateData data) getHomeItems,
    required TResult Function(HomeStateData data) showLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStateData data)? initial,
    TResult? Function(HomeStateData data)? getHomeItems,
    TResult? Function(HomeStateData data)? showLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStateData data)? initial,
    TResult Function(HomeStateData data)? getHomeItems,
    TResult Function(HomeStateData data)? showLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInitial value) initial,
    required TResult Function(GetHomeItems value) getHomeItems,
    required TResult Function(ShowLoading value) showLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInitial value)? initial,
    TResult? Function(GetHomeItems value)? getHomeItems,
    TResult? Function(ShowLoading value)? showLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(GetHomeItems value)? getHomeItems,
    TResult Function(ShowLoading value)? showLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({HomeStateData data});

  $HomeStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeStateData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeStateDataCopyWith<$Res> get data {
    return $HomeStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateInitialImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateInitialImplCopyWith(_$HomeStateInitialImpl value,
          $Res Function(_$HomeStateInitialImpl) then) =
      __$$HomeStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStateData data});

  @override
  $HomeStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$HomeStateInitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateInitialImpl>
    implements _$$HomeStateInitialImplCopyWith<$Res> {
  __$$HomeStateInitialImplCopyWithImpl(_$HomeStateInitialImpl _value,
      $Res Function(_$HomeStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$HomeStateInitialImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeStateData,
    ));
  }
}

/// @nodoc

class _$HomeStateInitialImpl implements HomeStateInitial {
  const _$HomeStateInitialImpl(this.data);

  @override
  final HomeStateData data;

  @override
  String toString() {
    return 'HomeState.initial(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateInitialImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateInitialImplCopyWith<_$HomeStateInitialImpl> get copyWith =>
      __$$HomeStateInitialImplCopyWithImpl<_$HomeStateInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeStateData data) initial,
    required TResult Function(HomeStateData data) getHomeItems,
    required TResult Function(HomeStateData data) showLoading,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStateData data)? initial,
    TResult? Function(HomeStateData data)? getHomeItems,
    TResult? Function(HomeStateData data)? showLoading,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStateData data)? initial,
    TResult Function(HomeStateData data)? getHomeItems,
    TResult Function(HomeStateData data)? showLoading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInitial value) initial,
    required TResult Function(GetHomeItems value) getHomeItems,
    required TResult Function(ShowLoading value) showLoading,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInitial value)? initial,
    TResult? Function(GetHomeItems value)? getHomeItems,
    TResult? Function(ShowLoading value)? showLoading,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(GetHomeItems value)? getHomeItems,
    TResult Function(ShowLoading value)? showLoading,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HomeStateInitial implements HomeState {
  const factory HomeStateInitial(final HomeStateData data) =
      _$HomeStateInitialImpl;

  @override
  HomeStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateInitialImplCopyWith<_$HomeStateInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetHomeItemsImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$GetHomeItemsImplCopyWith(
          _$GetHomeItemsImpl value, $Res Function(_$GetHomeItemsImpl) then) =
      __$$GetHomeItemsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStateData data});

  @override
  $HomeStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$GetHomeItemsImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$GetHomeItemsImpl>
    implements _$$GetHomeItemsImplCopyWith<$Res> {
  __$$GetHomeItemsImplCopyWithImpl(
      _$GetHomeItemsImpl _value, $Res Function(_$GetHomeItemsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetHomeItemsImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeStateData,
    ));
  }
}

/// @nodoc

class _$GetHomeItemsImpl implements GetHomeItems {
  const _$GetHomeItemsImpl(this.data);

  @override
  final HomeStateData data;

  @override
  String toString() {
    return 'HomeState.getHomeItems(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetHomeItemsImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetHomeItemsImplCopyWith<_$GetHomeItemsImpl> get copyWith =>
      __$$GetHomeItemsImplCopyWithImpl<_$GetHomeItemsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeStateData data) initial,
    required TResult Function(HomeStateData data) getHomeItems,
    required TResult Function(HomeStateData data) showLoading,
  }) {
    return getHomeItems(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStateData data)? initial,
    TResult? Function(HomeStateData data)? getHomeItems,
    TResult? Function(HomeStateData data)? showLoading,
  }) {
    return getHomeItems?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStateData data)? initial,
    TResult Function(HomeStateData data)? getHomeItems,
    TResult Function(HomeStateData data)? showLoading,
    required TResult orElse(),
  }) {
    if (getHomeItems != null) {
      return getHomeItems(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInitial value) initial,
    required TResult Function(GetHomeItems value) getHomeItems,
    required TResult Function(ShowLoading value) showLoading,
  }) {
    return getHomeItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInitial value)? initial,
    TResult? Function(GetHomeItems value)? getHomeItems,
    TResult? Function(ShowLoading value)? showLoading,
  }) {
    return getHomeItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(GetHomeItems value)? getHomeItems,
    TResult Function(ShowLoading value)? showLoading,
    required TResult orElse(),
  }) {
    if (getHomeItems != null) {
      return getHomeItems(this);
    }
    return orElse();
  }
}

abstract class GetHomeItems implements HomeState {
  const factory GetHomeItems(final HomeStateData data) = _$GetHomeItemsImpl;

  @override
  HomeStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$GetHomeItemsImplCopyWith<_$GetHomeItemsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowLoadingImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$ShowLoadingImplCopyWith(
          _$ShowLoadingImpl value, $Res Function(_$ShowLoadingImpl) then) =
      __$$ShowLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeStateData data});

  @override
  $HomeStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ShowLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$ShowLoadingImpl>
    implements _$$ShowLoadingImplCopyWith<$Res> {
  __$$ShowLoadingImplCopyWithImpl(
      _$ShowLoadingImpl _value, $Res Function(_$ShowLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ShowLoadingImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeStateData,
    ));
  }
}

/// @nodoc

class _$ShowLoadingImpl implements ShowLoading {
  const _$ShowLoadingImpl(this.data);

  @override
  final HomeStateData data;

  @override
  String toString() {
    return 'HomeState.showLoading(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowLoadingImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowLoadingImplCopyWith<_$ShowLoadingImpl> get copyWith =>
      __$$ShowLoadingImplCopyWithImpl<_$ShowLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeStateData data) initial,
    required TResult Function(HomeStateData data) getHomeItems,
    required TResult Function(HomeStateData data) showLoading,
  }) {
    return showLoading(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeStateData data)? initial,
    TResult? Function(HomeStateData data)? getHomeItems,
    TResult? Function(HomeStateData data)? showLoading,
  }) {
    return showLoading?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeStateData data)? initial,
    TResult Function(HomeStateData data)? getHomeItems,
    TResult Function(HomeStateData data)? showLoading,
    required TResult orElse(),
  }) {
    if (showLoading != null) {
      return showLoading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInitial value) initial,
    required TResult Function(GetHomeItems value) getHomeItems,
    required TResult Function(ShowLoading value) showLoading,
  }) {
    return showLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInitial value)? initial,
    TResult? Function(GetHomeItems value)? getHomeItems,
    TResult? Function(ShowLoading value)? showLoading,
  }) {
    return showLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(GetHomeItems value)? getHomeItems,
    TResult Function(ShowLoading value)? showLoading,
    required TResult orElse(),
  }) {
    if (showLoading != null) {
      return showLoading(this);
    }
    return orElse();
  }
}

abstract class ShowLoading implements HomeState {
  const factory ShowLoading(final HomeStateData data) = _$ShowLoadingImpl;

  @override
  HomeStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$ShowLoadingImplCopyWith<_$ShowLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
