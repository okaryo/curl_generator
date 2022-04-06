// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'curl_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CurlParamTearOff {
  const _$CurlParamTearOff();

  _CurlParam call(String key, String value) {
    return _CurlParam(
      key,
      value,
    );
  }
}

/// @nodoc
const $CurlParam = _$CurlParamTearOff();

/// @nodoc
mixin _$CurlParam {
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurlParamCopyWith<CurlParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurlParamCopyWith<$Res> {
  factory $CurlParamCopyWith(CurlParam value, $Res Function(CurlParam) then) =
      _$CurlParamCopyWithImpl<$Res>;
  $Res call({String key, String value});
}

/// @nodoc
class _$CurlParamCopyWithImpl<$Res> implements $CurlParamCopyWith<$Res> {
  _$CurlParamCopyWithImpl(this._value, this._then);

  final CurlParam _value;
  // ignore: unused_field
  final $Res Function(CurlParam) _then;

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
abstract class _$CurlParamCopyWith<$Res> implements $CurlParamCopyWith<$Res> {
  factory _$CurlParamCopyWith(
          _CurlParam value, $Res Function(_CurlParam) then) =
      __$CurlParamCopyWithImpl<$Res>;
  @override
  $Res call({String key, String value});
}

/// @nodoc
class __$CurlParamCopyWithImpl<$Res> extends _$CurlParamCopyWithImpl<$Res>
    implements _$CurlParamCopyWith<$Res> {
  __$CurlParamCopyWithImpl(_CurlParam _value, $Res Function(_CurlParam) _then)
      : super(_value, (v) => _then(v as _CurlParam));

  @override
  _CurlParam get _value => super._value as _CurlParam;

  @override
  $Res call({
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_CurlParam(
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

class _$_CurlParam extends _CurlParam {
  const _$_CurlParam(this.key, this.value) : super._();

  @override
  final String key;
  @override
  final String value;

  @override
  String toString() {
    return 'CurlParam(key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurlParam &&
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
  _$CurlParamCopyWith<_CurlParam> get copyWith =>
      __$CurlParamCopyWithImpl<_CurlParam>(this, _$identity);
}

abstract class _CurlParam extends CurlParam {
  const factory _CurlParam(String key, String value) = _$_CurlParam;
  const _CurlParam._() : super._();

  @override
  String get key;
  @override
  String get value;
  @override
  @JsonKey(ignore: true)
  _$CurlParamCopyWith<_CurlParam> get copyWith =>
      throw _privateConstructorUsedError;
}
