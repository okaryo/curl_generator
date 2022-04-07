// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ParamTearOff {
  const _$ParamTearOff();

  _Param call(String key, String value) {
    return _Param(
      key,
      value,
    );
  }
}

/// @nodoc
const $Param = _$ParamTearOff();

/// @nodoc
mixin _$Param {
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParamCopyWith<Param> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParamCopyWith<$Res> {
  factory $ParamCopyWith(Param value, $Res Function(Param) then) =
      _$ParamCopyWithImpl<$Res>;
  $Res call({String key, String value});
}

/// @nodoc
class _$ParamCopyWithImpl<$Res> implements $ParamCopyWith<$Res> {
  _$ParamCopyWithImpl(this._value, this._then);

  final Param _value;
  // ignore: unused_field
  final $Res Function(Param) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ParamCopyWith<$Res> implements $ParamCopyWith<$Res> {
  factory _$ParamCopyWith(_Param value, $Res Function(_Param) then) =
      __$ParamCopyWithImpl<$Res>;
  @override
  $Res call({String key, String value});
}

/// @nodoc
class __$ParamCopyWithImpl<$Res> extends _$ParamCopyWithImpl<$Res>
    implements _$ParamCopyWith<$Res> {
  __$ParamCopyWithImpl(_Param _value, $Res Function(_Param) _then)
      : super(_value, (v) => _then(v as _Param));

  @override
  _Param get _value => super._value as _Param;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_Param(
      key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Param extends _Param {
  const _$_Param(this.key, this.value) : super._();

  @override
  final String key;
  @override
  final String value;

  @override
  String toString() {
    return 'Param(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Param &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$ParamCopyWith<_Param> get copyWith =>
      __$ParamCopyWithImpl<_Param>(this, _$identity);
}

abstract class _Param extends Param {
  const factory _Param(String key, String value) = _$_Param;
  const _Param._() : super._();

  @override
  String get key;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$ParamCopyWith<_Param> get copyWith => throw _privateConstructorUsedError;
}
