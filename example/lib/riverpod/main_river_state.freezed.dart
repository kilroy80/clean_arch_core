// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_river_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MainRiverData implements DiagnosticableTreeMixin {
  int get inc;

  /// Create a copy of MainRiverData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MainRiverDataCopyWith<MainRiverData> get copyWith =>
      _$MainRiverDataCopyWithImpl<MainRiverData>(
          this as MainRiverData, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'MainRiverData'))
      ..add(DiagnosticsProperty('inc', inc));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MainRiverData &&
            (identical(other.inc, inc) || other.inc == inc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inc);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainRiverData(inc: $inc)';
  }
}

/// @nodoc
abstract mixin class $MainRiverDataCopyWith<$Res> {
  factory $MainRiverDataCopyWith(
          MainRiverData value, $Res Function(MainRiverData) _then) =
      _$MainRiverDataCopyWithImpl;
  @useResult
  $Res call({int inc});
}

/// @nodoc
class _$MainRiverDataCopyWithImpl<$Res>
    implements $MainRiverDataCopyWith<$Res> {
  _$MainRiverDataCopyWithImpl(this._self, this._then);

  final MainRiverData _self;
  final $Res Function(MainRiverData) _then;

  /// Create a copy of MainRiverData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inc = null,
  }) {
    return _then(_self.copyWith(
      inc: null == inc
          ? _self.inc
          : inc // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [MainRiverData].
extension MainRiverDataPatterns on MainRiverData {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MainRiverData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MainRiverData() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MainRiverData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MainRiverData():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MainRiverData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MainRiverData() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int inc)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MainRiverData() when $default != null:
        return $default(_that.inc);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int inc) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MainRiverData():
        return $default(_that.inc);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int inc)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MainRiverData() when $default != null:
        return $default(_that.inc);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MainRiverData with DiagnosticableTreeMixin implements MainRiverData {
  const _MainRiverData({this.inc = 0});

  @override
  @JsonKey()
  final int inc;

  /// Create a copy of MainRiverData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MainRiverDataCopyWith<_MainRiverData> get copyWith =>
      __$MainRiverDataCopyWithImpl<_MainRiverData>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'MainRiverData'))
      ..add(DiagnosticsProperty('inc', inc));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MainRiverData &&
            (identical(other.inc, inc) || other.inc == inc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inc);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainRiverData(inc: $inc)';
  }
}

/// @nodoc
abstract mixin class _$MainRiverDataCopyWith<$Res>
    implements $MainRiverDataCopyWith<$Res> {
  factory _$MainRiverDataCopyWith(
          _MainRiverData value, $Res Function(_MainRiverData) _then) =
      __$MainRiverDataCopyWithImpl;
  @override
  @useResult
  $Res call({int inc});
}

/// @nodoc
class __$MainRiverDataCopyWithImpl<$Res>
    implements _$MainRiverDataCopyWith<$Res> {
  __$MainRiverDataCopyWithImpl(this._self, this._then);

  final _MainRiverData _self;
  final $Res Function(_MainRiverData) _then;

  /// Create a copy of MainRiverData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? inc = null,
  }) {
    return _then(_MainRiverData(
      inc: null == inc
          ? _self.inc
          : inc // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$MainRiverState implements DiagnosticableTreeMixin {
  MainRiverData get data;

  /// Create a copy of MainRiverState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MainRiverStateCopyWith<MainRiverState> get copyWith =>
      _$MainRiverStateCopyWithImpl<MainRiverState>(
          this as MainRiverState, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'MainRiverState'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MainRiverState &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainRiverState(data: $data)';
  }
}

/// @nodoc
abstract mixin class $MainRiverStateCopyWith<$Res> {
  factory $MainRiverStateCopyWith(
          MainRiverState value, $Res Function(MainRiverState) _then) =
      _$MainRiverStateCopyWithImpl;
  @useResult
  $Res call({MainRiverData data});

  $MainRiverDataCopyWith<$Res> get data;
}

/// @nodoc
class _$MainRiverStateCopyWithImpl<$Res>
    implements $MainRiverStateCopyWith<$Res> {
  _$MainRiverStateCopyWithImpl(this._self, this._then);

  final MainRiverState _self;
  final $Res Function(MainRiverState) _then;

  /// Create a copy of MainRiverState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainRiverData,
    ));
  }

  /// Create a copy of MainRiverState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainRiverDataCopyWith<$Res> get data {
    return $MainRiverDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [MainRiverState].
extension MainRiverStatePatterns on MainRiverState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MainRiverStateInit value)? init,
    TResult Function(MainRiverStateLoad value)? load,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case MainRiverStateInit() when init != null:
        return init(_that);
      case MainRiverStateLoad() when load != null:
        return load(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MainRiverStateInit value) init,
    required TResult Function(MainRiverStateLoad value) load,
  }) {
    final _that = this;
    switch (_that) {
      case MainRiverStateInit():
        return init(_that);
      case MainRiverStateLoad():
        return load(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MainRiverStateInit value)? init,
    TResult? Function(MainRiverStateLoad value)? load,
  }) {
    final _that = this;
    switch (_that) {
      case MainRiverStateInit() when init != null:
        return init(_that);
      case MainRiverStateLoad() when load != null:
        return load(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MainRiverData data)? init,
    TResult Function(MainRiverData data)? load,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case MainRiverStateInit() when init != null:
        return init(_that.data);
      case MainRiverStateLoad() when load != null:
        return load(_that.data);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MainRiverData data) init,
    required TResult Function(MainRiverData data) load,
  }) {
    final _that = this;
    switch (_that) {
      case MainRiverStateInit():
        return init(_that.data);
      case MainRiverStateLoad():
        return load(_that.data);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MainRiverData data)? init,
    TResult? Function(MainRiverData data)? load,
  }) {
    final _that = this;
    switch (_that) {
      case MainRiverStateInit() when init != null:
        return init(_that.data);
      case MainRiverStateLoad() when load != null:
        return load(_that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc

class MainRiverStateInit
    with DiagnosticableTreeMixin
    implements MainRiverState {
  const MainRiverStateInit({this.data = const MainRiverData()});

  @override
  @JsonKey()
  final MainRiverData data;

  /// Create a copy of MainRiverState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MainRiverStateInitCopyWith<MainRiverStateInit> get copyWith =>
      _$MainRiverStateInitCopyWithImpl<MainRiverStateInit>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'MainRiverState.init'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MainRiverStateInit &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainRiverState.init(data: $data)';
  }
}

/// @nodoc
abstract mixin class $MainRiverStateInitCopyWith<$Res>
    implements $MainRiverStateCopyWith<$Res> {
  factory $MainRiverStateInitCopyWith(
          MainRiverStateInit value, $Res Function(MainRiverStateInit) _then) =
      _$MainRiverStateInitCopyWithImpl;
  @override
  @useResult
  $Res call({MainRiverData data});

  @override
  $MainRiverDataCopyWith<$Res> get data;
}

/// @nodoc
class _$MainRiverStateInitCopyWithImpl<$Res>
    implements $MainRiverStateInitCopyWith<$Res> {
  _$MainRiverStateInitCopyWithImpl(this._self, this._then);

  final MainRiverStateInit _self;
  final $Res Function(MainRiverStateInit) _then;

  /// Create a copy of MainRiverState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(MainRiverStateInit(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainRiverData,
    ));
  }

  /// Create a copy of MainRiverState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainRiverDataCopyWith<$Res> get data {
    return $MainRiverDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc

class MainRiverStateLoad
    with DiagnosticableTreeMixin
    implements MainRiverState {
  const MainRiverStateLoad({this.data = const MainRiverData()});

  @override
  @JsonKey()
  final MainRiverData data;

  /// Create a copy of MainRiverState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MainRiverStateLoadCopyWith<MainRiverStateLoad> get copyWith =>
      _$MainRiverStateLoadCopyWithImpl<MainRiverStateLoad>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'MainRiverState.load'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MainRiverStateLoad &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainRiverState.load(data: $data)';
  }
}

/// @nodoc
abstract mixin class $MainRiverStateLoadCopyWith<$Res>
    implements $MainRiverStateCopyWith<$Res> {
  factory $MainRiverStateLoadCopyWith(
          MainRiverStateLoad value, $Res Function(MainRiverStateLoad) _then) =
      _$MainRiverStateLoadCopyWithImpl;
  @override
  @useResult
  $Res call({MainRiverData data});

  @override
  $MainRiverDataCopyWith<$Res> get data;
}

/// @nodoc
class _$MainRiverStateLoadCopyWithImpl<$Res>
    implements $MainRiverStateLoadCopyWith<$Res> {
  _$MainRiverStateLoadCopyWithImpl(this._self, this._then);

  final MainRiverStateLoad _self;
  final $Res Function(MainRiverStateLoad) _then;

  /// Create a copy of MainRiverState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(MainRiverStateLoad(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainRiverData,
    ));
  }

  /// Create a copy of MainRiverState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainRiverDataCopyWith<$Res> get data {
    return $MainRiverDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
