// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MainEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is MainEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MainEvent()';
  }
}

/// @nodoc
class $MainEventCopyWith<$Res> {
  $MainEventCopyWith(MainEvent _, $Res Function(MainEvent) __);
}

/// Adds pattern-matching-related methods to [MainEvent].
extension MainEventPatterns on MainEvent {
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
    TResult Function(_Load value)? load,
    TResult Function(_Increase value)? increase,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Load() when load != null:
        return load(_that);
      case _Increase() when increase != null:
        return increase(_that);
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
    required TResult Function(_Load value) load,
    required TResult Function(_Increase value) increase,
  }) {
    final _that = this;
    switch (_that) {
      case _Load():
        return load(_that);
      case _Increase():
        return increase(_that);
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
    TResult? Function(_Load value)? load,
    TResult? Function(_Increase value)? increase,
  }) {
    final _that = this;
    switch (_that) {
      case _Load() when load != null:
        return load(_that);
      case _Increase() when increase != null:
        return increase(_that);
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
    TResult Function()? load,
    TResult Function()? increase,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Load() when load != null:
        return load();
      case _Increase() when increase != null:
        return increase();
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
    required TResult Function() load,
    required TResult Function() increase,
  }) {
    final _that = this;
    switch (_that) {
      case _Load():
        return load();
      case _Increase():
        return increase();
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
    TResult? Function()? load,
    TResult? Function()? increase,
  }) {
    final _that = this;
    switch (_that) {
      case _Load() when load != null:
        return load();
      case _Increase() when increase != null:
        return increase();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Load implements MainEvent {
  const _Load();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Load);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MainEvent.load()';
  }
}

/// @nodoc

class _Increase implements MainEvent {
  const _Increase();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Increase);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'MainEvent.increase()';
  }
}

/// @nodoc
mixin _$MainBlocData {
  int get inc;

  /// Create a copy of MainBlocData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MainBlocDataCopyWith<MainBlocData> get copyWith =>
      _$MainBlocDataCopyWithImpl<MainBlocData>(
          this as MainBlocData, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MainBlocData &&
            (identical(other.inc, inc) || other.inc == inc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inc);

  @override
  String toString() {
    return 'MainBlocData(inc: $inc)';
  }
}

/// @nodoc
abstract mixin class $MainBlocDataCopyWith<$Res> {
  factory $MainBlocDataCopyWith(
          MainBlocData value, $Res Function(MainBlocData) _then) =
      _$MainBlocDataCopyWithImpl;
  @useResult
  $Res call({int inc});
}

/// @nodoc
class _$MainBlocDataCopyWithImpl<$Res> implements $MainBlocDataCopyWith<$Res> {
  _$MainBlocDataCopyWithImpl(this._self, this._then);

  final MainBlocData _self;
  final $Res Function(MainBlocData) _then;

  /// Create a copy of MainBlocData
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

/// Adds pattern-matching-related methods to [MainBlocData].
extension MainBlocDataPatterns on MainBlocData {
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
    TResult Function(_MainBlocData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MainBlocData() when $default != null:
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
    TResult Function(_MainBlocData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MainBlocData():
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
    TResult? Function(_MainBlocData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MainBlocData() when $default != null:
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
      case _MainBlocData() when $default != null:
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
      case _MainBlocData():
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
      case _MainBlocData() when $default != null:
        return $default(_that.inc);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MainBlocData implements MainBlocData {
  const _MainBlocData({this.inc = 0});

  @override
  @JsonKey()
  final int inc;

  /// Create a copy of MainBlocData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MainBlocDataCopyWith<_MainBlocData> get copyWith =>
      __$MainBlocDataCopyWithImpl<_MainBlocData>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MainBlocData &&
            (identical(other.inc, inc) || other.inc == inc));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inc);

  @override
  String toString() {
    return 'MainBlocData(inc: $inc)';
  }
}

/// @nodoc
abstract mixin class _$MainBlocDataCopyWith<$Res>
    implements $MainBlocDataCopyWith<$Res> {
  factory _$MainBlocDataCopyWith(
          _MainBlocData value, $Res Function(_MainBlocData) _then) =
      __$MainBlocDataCopyWithImpl;
  @override
  @useResult
  $Res call({int inc});
}

/// @nodoc
class __$MainBlocDataCopyWithImpl<$Res>
    implements _$MainBlocDataCopyWith<$Res> {
  __$MainBlocDataCopyWithImpl(this._self, this._then);

  final _MainBlocData _self;
  final $Res Function(_MainBlocData) _then;

  /// Create a copy of MainBlocData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? inc = null,
  }) {
    return _then(_MainBlocData(
      inc: null == inc
          ? _self.inc
          : inc // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$MainState {
  MainBlocData get data;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MainStateCopyWith<MainState> get copyWith =>
      _$MainStateCopyWithImpl<MainState>(this as MainState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MainState &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'MainState(data: $data)';
  }
}

/// @nodoc
abstract mixin class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) _then) =
      _$MainStateCopyWithImpl;
  @useResult
  $Res call({MainBlocData data});

  $MainBlocDataCopyWith<$Res> get data;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res> implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._self, this._then);

  final MainState _self;
  final $Res Function(MainState) _then;

  /// Create a copy of MainState
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
              as MainBlocData,
    ));
  }

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainBlocDataCopyWith<$Res> get data {
    return $MainBlocDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// Adds pattern-matching-related methods to [MainState].
extension MainStatePatterns on MainState {
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
    TResult Function(MainStateInit value)? init,
    TResult Function(MainStateLoad value)? load,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case MainStateInit() when init != null:
        return init(_that);
      case MainStateLoad() when load != null:
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
    required TResult Function(MainStateInit value) init,
    required TResult Function(MainStateLoad value) load,
  }) {
    final _that = this;
    switch (_that) {
      case MainStateInit():
        return init(_that);
      case MainStateLoad():
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
    TResult? Function(MainStateInit value)? init,
    TResult? Function(MainStateLoad value)? load,
  }) {
    final _that = this;
    switch (_that) {
      case MainStateInit() when init != null:
        return init(_that);
      case MainStateLoad() when load != null:
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
    TResult Function(MainBlocData data)? init,
    TResult Function(MainBlocData data)? load,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case MainStateInit() when init != null:
        return init(_that.data);
      case MainStateLoad() when load != null:
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
    required TResult Function(MainBlocData data) init,
    required TResult Function(MainBlocData data) load,
  }) {
    final _that = this;
    switch (_that) {
      case MainStateInit():
        return init(_that.data);
      case MainStateLoad():
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
    TResult? Function(MainBlocData data)? init,
    TResult? Function(MainBlocData data)? load,
  }) {
    final _that = this;
    switch (_that) {
      case MainStateInit() when init != null:
        return init(_that.data);
      case MainStateLoad() when load != null:
        return load(_that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc

class MainStateInit implements MainState {
  const MainStateInit({this.data = const MainBlocData()});

  @override
  @JsonKey()
  final MainBlocData data;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MainStateInitCopyWith<MainStateInit> get copyWith =>
      _$MainStateInitCopyWithImpl<MainStateInit>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MainStateInit &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'MainState.init(data: $data)';
  }
}

/// @nodoc
abstract mixin class $MainStateInitCopyWith<$Res>
    implements $MainStateCopyWith<$Res> {
  factory $MainStateInitCopyWith(
          MainStateInit value, $Res Function(MainStateInit) _then) =
      _$MainStateInitCopyWithImpl;
  @override
  @useResult
  $Res call({MainBlocData data});

  @override
  $MainBlocDataCopyWith<$Res> get data;
}

/// @nodoc
class _$MainStateInitCopyWithImpl<$Res>
    implements $MainStateInitCopyWith<$Res> {
  _$MainStateInitCopyWithImpl(this._self, this._then);

  final MainStateInit _self;
  final $Res Function(MainStateInit) _then;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(MainStateInit(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainBlocData,
    ));
  }

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainBlocDataCopyWith<$Res> get data {
    return $MainBlocDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc

class MainStateLoad implements MainState {
  const MainStateLoad({this.data = const MainBlocData()});

  @override
  @JsonKey()
  final MainBlocData data;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MainStateLoadCopyWith<MainStateLoad> get copyWith =>
      _$MainStateLoadCopyWithImpl<MainStateLoad>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MainStateLoad &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'MainState.load(data: $data)';
  }
}

/// @nodoc
abstract mixin class $MainStateLoadCopyWith<$Res>
    implements $MainStateCopyWith<$Res> {
  factory $MainStateLoadCopyWith(
          MainStateLoad value, $Res Function(MainStateLoad) _then) =
      _$MainStateLoadCopyWithImpl;
  @override
  @useResult
  $Res call({MainBlocData data});

  @override
  $MainBlocDataCopyWith<$Res> get data;
}

/// @nodoc
class _$MainStateLoadCopyWithImpl<$Res>
    implements $MainStateLoadCopyWith<$Res> {
  _$MainStateLoadCopyWithImpl(this._self, this._then);

  final MainStateLoad _self;
  final $Res Function(MainStateLoad) _then;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(MainStateLoad(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as MainBlocData,
    ));
  }

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainBlocDataCopyWith<$Res> get data {
    return $MainBlocDataCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
