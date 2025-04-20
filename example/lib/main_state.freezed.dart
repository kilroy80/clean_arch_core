// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MainState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MainState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MainState()';
  }
}

/// @nodoc
class $MainStateCopyWith<$Res> {
  $MainStateCopyWith(MainState _, $Res Function(MainState) __);
}

/// @nodoc

class MainStateInit extends MainState {
  const MainStateInit() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MainStateInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MainState.init()';
  }
}

/// @nodoc

class MainStateLoad extends MainState {
  const MainStateLoad({this.inc = 0}) : super._();

  @JsonKey()
  final int inc;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MainStateLoadCopyWith<MainStateLoad> get copyWith =>
      _$MainStateLoadCopyWithImpl<MainStateLoad>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MainStateLoad &&
            (identical(other.inc, inc) || other.inc == inc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inc);

  @override
  String toString() {
    return 'MainState.load(inc: $inc)';
  }
}

/// @nodoc
abstract mixin class $MainStateLoadCopyWith<$Res>
    implements $MainStateCopyWith<$Res> {
  factory $MainStateLoadCopyWith(
          MainStateLoad value, $Res Function(MainStateLoad) _then) =
      _$MainStateLoadCopyWithImpl;
  @useResult
  $Res call({int inc});
}

/// @nodoc
class _$MainStateLoadCopyWithImpl<$Res>
    implements $MainStateLoadCopyWith<$Res> {
  _$MainStateLoadCopyWithImpl(this._self, this._then);

  final MainStateLoad _self;
  final $Res Function(MainStateLoad) _then;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? inc = null,
  }) {
    return _then(MainStateLoad(
      inc: null == inc
          ? _self.inc
          : inc // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
