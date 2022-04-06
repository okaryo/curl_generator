// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'curl_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CurlParamsTearOff {
  const _$CurlParamsTearOff();

  _CurlParams call(List<CurlParam> values) {
    return _CurlParams(
      values,
    );
  }
}

/// @nodoc
const $CurlParams = _$CurlParamsTearOff();

/// @nodoc
mixin _$CurlParams {
  List<CurlParam> get values => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurlParamsCopyWith<CurlParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurlParamsCopyWith<$Res> {
  factory $CurlParamsCopyWith(
          CurlParams value, $Res Function(CurlParams) then) =
      _$CurlParamsCopyWithImpl<$Res>;
  $Res call({List<CurlParam> values});
}

/// @nodoc
class _$CurlParamsCopyWithImpl<$Res> implements $CurlParamsCopyWith<$Res> {
  _$CurlParamsCopyWithImpl(this._value, this._then);

  final CurlParams _value;
  // ignore: unused_field
  final $Res Function(CurlParams) _then;

  @override
  $Res call({
    Object? values = freezed,
  }) {
    return _then(_value.copyWith(
      values: values == freezed
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<CurlParam>,
    ));
  }
}

/// @nodoc
abstract class _$CurlParamsCopyWith<$Res> implements $CurlParamsCopyWith<$Res> {
  factory _$CurlParamsCopyWith(
          _CurlParams value, $Res Function(_CurlParams) then) =
      __$CurlParamsCopyWithImpl<$Res>;
  @override
  $Res call({List<CurlParam> values});
}

/// @nodoc
class __$CurlParamsCopyWithImpl<$Res> extends _$CurlParamsCopyWithImpl<$Res>
    implements _$CurlParamsCopyWith<$Res> {
  __$CurlParamsCopyWithImpl(
      _CurlParams _value, $Res Function(_CurlParams) _then)
      : super(_value, (v) => _then(v as _CurlParams));

  @override
  _CurlParams get _value => super._value as _CurlParams;

  @override
  $Res call({
    Object? values = freezed,
  }) {
    return _then(_CurlParams(
      values == freezed
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<CurlParam>,
    ));
  }
}

/// @nodoc

class _$_CurlParams extends _CurlParams {
  const _$_CurlParams(this.values) : super._();

  @override
  final List<CurlParam> values;

  @override
  String toString() {
    return 'CurlParams(values: $values)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurlParams &&
            const DeepCollectionEquality().equals(other.values, values));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(values));

  @JsonKey(ignore: true)
  @override
  _$CurlParamsCopyWith<_CurlParams> get copyWith =>
      __$CurlParamsCopyWithImpl<_CurlParams>(this, _$identity);
}

abstract class _CurlParams extends CurlParams {
  const factory _CurlParams(List<CurlParam> values) = _$_CurlParams;
  const _CurlParams._() : super._();

  @override
  List<CurlParam> get values;
  @override
  @JsonKey(ignore: true)
  _$CurlParamsCopyWith<_CurlParams> get copyWith =>
      throw _privateConstructorUsedError;
}
