// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainStateData {
  int get tabIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainStateDataCopyWith<MainStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateDataCopyWith<$Res> {
  factory $MainStateDataCopyWith(
          MainStateData value, $Res Function(MainStateData) then) =
      _$MainStateDataCopyWithImpl<$Res, MainStateData>;
  @useResult
  $Res call({int tabIndex});
}

/// @nodoc
class _$MainStateDataCopyWithImpl<$Res, $Val extends MainStateData>
    implements $MainStateDataCopyWith<$Res> {
  _$MainStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
  }) {
    return _then(_value.copyWith(
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainStateDataImplCopyWith<$Res>
    implements $MainStateDataCopyWith<$Res> {
  factory _$$MainStateDataImplCopyWith(
          _$MainStateDataImpl value, $Res Function(_$MainStateDataImpl) then) =
      __$$MainStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tabIndex});
}

/// @nodoc
class __$$MainStateDataImplCopyWithImpl<$Res>
    extends _$MainStateDataCopyWithImpl<$Res, _$MainStateDataImpl>
    implements _$$MainStateDataImplCopyWith<$Res> {
  __$$MainStateDataImplCopyWithImpl(
      _$MainStateDataImpl _value, $Res Function(_$MainStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
  }) {
    return _then(_$MainStateDataImpl(
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MainStateDataImpl implements _MainStateData {
  const _$MainStateDataImpl({this.tabIndex = 0});

  @override
  @JsonKey()
  final int tabIndex;

  @override
  String toString() {
    return 'MainStateData(tabIndex: $tabIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateDataImpl &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainStateDataImplCopyWith<_$MainStateDataImpl> get copyWith =>
      __$$MainStateDataImplCopyWithImpl<_$MainStateDataImpl>(this, _$identity);
}

abstract class _MainStateData implements MainStateData {
  const factory _MainStateData({final int tabIndex}) = _$MainStateDataImpl;

  @override
  int get tabIndex;
  @override
  @JsonKey(ignore: true)
  _$$MainStateDataImplCopyWith<_$MainStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainState {
  MainStateData get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainStateData data) initial,
    required TResult Function(MainStateData data) changeTabIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainStateData data)? initial,
    TResult? Function(MainStateData data)? changeTabIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainStateData data)? initial,
    TResult Function(MainStateData data)? changeTabIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainStateInitial value) initial,
    required TResult Function(ChangeTabIndex value) changeTabIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainStateInitial value)? initial,
    TResult? Function(ChangeTabIndex value)? changeTabIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainStateInitial value)? initial,
    TResult Function(ChangeTabIndex value)? changeTabIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
  @useResult
  $Res call({MainStateData data});

  $MainStateDataCopyWith<$Res> get data;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

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
              as MainStateData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MainStateDataCopyWith<$Res> get data {
    return $MainStateDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MainStateInitialImplCopyWith<$Res>
    implements $MainStateCopyWith<$Res> {
  factory _$$MainStateInitialImplCopyWith(_$MainStateInitialImpl value,
          $Res Function(_$MainStateInitialImpl) then) =
      __$$MainStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainStateData data});

  @override
  $MainStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$MainStateInitialImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateInitialImpl>
    implements _$$MainStateInitialImplCopyWith<$Res> {
  __$$MainStateInitialImplCopyWithImpl(_$MainStateInitialImpl _value,
      $Res Function(_$MainStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$MainStateInitialImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainStateData,
    ));
  }
}

/// @nodoc

class _$MainStateInitialImpl implements MainStateInitial {
  const _$MainStateInitialImpl(this.data);

  @override
  final MainStateData data;

  @override
  String toString() {
    return 'MainState.initial(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateInitialImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainStateInitialImplCopyWith<_$MainStateInitialImpl> get copyWith =>
      __$$MainStateInitialImplCopyWithImpl<_$MainStateInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainStateData data) initial,
    required TResult Function(MainStateData data) changeTabIndex,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainStateData data)? initial,
    TResult? Function(MainStateData data)? changeTabIndex,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainStateData data)? initial,
    TResult Function(MainStateData data)? changeTabIndex,
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
    required TResult Function(MainStateInitial value) initial,
    required TResult Function(ChangeTabIndex value) changeTabIndex,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainStateInitial value)? initial,
    TResult? Function(ChangeTabIndex value)? changeTabIndex,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainStateInitial value)? initial,
    TResult Function(ChangeTabIndex value)? changeTabIndex,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MainStateInitial implements MainState {
  const factory MainStateInitial(final MainStateData data) =
      _$MainStateInitialImpl;

  @override
  MainStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$MainStateInitialImplCopyWith<_$MainStateInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeTabIndexImplCopyWith<$Res>
    implements $MainStateCopyWith<$Res> {
  factory _$$ChangeTabIndexImplCopyWith(_$ChangeTabIndexImpl value,
          $Res Function(_$ChangeTabIndexImpl) then) =
      __$$ChangeTabIndexImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MainStateData data});

  @override
  $MainStateDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$ChangeTabIndexImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$ChangeTabIndexImpl>
    implements _$$ChangeTabIndexImplCopyWith<$Res> {
  __$$ChangeTabIndexImplCopyWithImpl(
      _$ChangeTabIndexImpl _value, $Res Function(_$ChangeTabIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ChangeTabIndexImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainStateData,
    ));
  }
}

/// @nodoc

class _$ChangeTabIndexImpl implements ChangeTabIndex {
  const _$ChangeTabIndexImpl(this.data);

  @override
  final MainStateData data;

  @override
  String toString() {
    return 'MainState.changeTabIndex(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTabIndexImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTabIndexImplCopyWith<_$ChangeTabIndexImpl> get copyWith =>
      __$$ChangeTabIndexImplCopyWithImpl<_$ChangeTabIndexImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainStateData data) initial,
    required TResult Function(MainStateData data) changeTabIndex,
  }) {
    return changeTabIndex(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainStateData data)? initial,
    TResult? Function(MainStateData data)? changeTabIndex,
  }) {
    return changeTabIndex?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainStateData data)? initial,
    TResult Function(MainStateData data)? changeTabIndex,
    required TResult orElse(),
  }) {
    if (changeTabIndex != null) {
      return changeTabIndex(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainStateInitial value) initial,
    required TResult Function(ChangeTabIndex value) changeTabIndex,
  }) {
    return changeTabIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainStateInitial value)? initial,
    TResult? Function(ChangeTabIndex value)? changeTabIndex,
  }) {
    return changeTabIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainStateInitial value)? initial,
    TResult Function(ChangeTabIndex value)? changeTabIndex,
    required TResult orElse(),
  }) {
    if (changeTabIndex != null) {
      return changeTabIndex(this);
    }
    return orElse();
  }
}

abstract class ChangeTabIndex implements MainState {
  const factory ChangeTabIndex(final MainStateData data) = _$ChangeTabIndexImpl;

  @override
  MainStateData get data;
  @override
  @JsonKey(ignore: true)
  _$$ChangeTabIndexImplCopyWith<_$ChangeTabIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
