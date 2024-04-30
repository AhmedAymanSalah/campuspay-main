// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() myCache,
    required TResult Function() credit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? myCache,
    TResult? Function()? credit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? myCache,
    TResult Function()? credit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(MyCache<T> value) myCache,
    required TResult Function(MyCredit<T> value) credit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(MyCache<T> value)? myCache,
    TResult? Function(MyCredit<T> value)? credit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(MyCache<T> value)? myCache,
    TResult Function(MyCredit<T> value)? credit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<T, $Res> {
  factory $HomeStateCopyWith(
          HomeState<T> value, $Res Function(HomeState<T>) then) =
      _$HomeStateCopyWithImpl<T, $Res, HomeState<T>>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<T, $Res, $Val extends HomeState<T>>
    implements $HomeStateCopyWith<T, $Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<T, $Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl<T> value, $Res Function(_$InitialImpl<T>) then) =
      __$$InitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$InitialImpl<T>>
    implements _$$InitialImplCopyWith<T, $Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl<T> _value, $Res Function(_$InitialImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl<T> implements _Initial<T> {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HomeState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() myCache,
    required TResult Function() credit,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? myCache,
    TResult? Function()? credit,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? myCache,
    TResult Function()? credit,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(MyCache<T> value) myCache,
    required TResult Function(MyCredit<T> value) credit,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(MyCache<T> value)? myCache,
    TResult? Function(MyCredit<T> value)? credit,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(MyCache<T> value)? myCache,
    TResult Function(MyCredit<T> value)? credit,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial<T> implements HomeState<T> {
  const factory _Initial() = _$InitialImpl<T>;
}

/// @nodoc
abstract class _$$MyCacheImplCopyWith<T, $Res> {
  factory _$$MyCacheImplCopyWith(
          _$MyCacheImpl<T> value, $Res Function(_$MyCacheImpl<T>) then) =
      __$$MyCacheImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$MyCacheImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$MyCacheImpl<T>>
    implements _$$MyCacheImplCopyWith<T, $Res> {
  __$$MyCacheImplCopyWithImpl(
      _$MyCacheImpl<T> _value, $Res Function(_$MyCacheImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MyCacheImpl<T> implements MyCache<T> {
  const _$MyCacheImpl();

  @override
  String toString() {
    return 'HomeState<$T>.myCache()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MyCacheImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() myCache,
    required TResult Function() credit,
  }) {
    return myCache();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? myCache,
    TResult? Function()? credit,
  }) {
    return myCache?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? myCache,
    TResult Function()? credit,
    required TResult orElse(),
  }) {
    if (myCache != null) {
      return myCache();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(MyCache<T> value) myCache,
    required TResult Function(MyCredit<T> value) credit,
  }) {
    return myCache(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(MyCache<T> value)? myCache,
    TResult? Function(MyCredit<T> value)? credit,
  }) {
    return myCache?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(MyCache<T> value)? myCache,
    TResult Function(MyCredit<T> value)? credit,
    required TResult orElse(),
  }) {
    if (myCache != null) {
      return myCache(this);
    }
    return orElse();
  }
}

abstract class MyCache<T> implements HomeState<T> {
  const factory MyCache() = _$MyCacheImpl<T>;
}

/// @nodoc
abstract class _$$MyCreditImplCopyWith<T, $Res> {
  factory _$$MyCreditImplCopyWith(
          _$MyCreditImpl<T> value, $Res Function(_$MyCreditImpl<T>) then) =
      __$$MyCreditImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$MyCreditImplCopyWithImpl<T, $Res>
    extends _$HomeStateCopyWithImpl<T, $Res, _$MyCreditImpl<T>>
    implements _$$MyCreditImplCopyWith<T, $Res> {
  __$$MyCreditImplCopyWithImpl(
      _$MyCreditImpl<T> _value, $Res Function(_$MyCreditImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MyCreditImpl<T> implements MyCredit<T> {
  const _$MyCreditImpl();

  @override
  String toString() {
    return 'HomeState<$T>.credit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MyCreditImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() myCache,
    required TResult Function() credit,
  }) {
    return credit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? myCache,
    TResult? Function()? credit,
  }) {
    return credit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? myCache,
    TResult Function()? credit,
    required TResult orElse(),
  }) {
    if (credit != null) {
      return credit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial<T> value) initial,
    required TResult Function(MyCache<T> value) myCache,
    required TResult Function(MyCredit<T> value) credit,
  }) {
    return credit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial<T> value)? initial,
    TResult? Function(MyCache<T> value)? myCache,
    TResult? Function(MyCredit<T> value)? credit,
  }) {
    return credit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial<T> value)? initial,
    TResult Function(MyCache<T> value)? myCache,
    TResult Function(MyCredit<T> value)? credit,
    required TResult orElse(),
  }) {
    if (credit != null) {
      return credit(this);
    }
    return orElse();
  }
}

abstract class MyCredit<T> implements HomeState<T> {
  const factory MyCredit() = _$MyCreditImpl<T>;
}
