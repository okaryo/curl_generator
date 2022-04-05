// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'curl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CurlTearOff {
  const _$CurlTearOff();

  _Curl call({required CurlMethod method, required Uri url}) {
    return _Curl(
      method: method,
      url: url,
    );
  }
}

/// @nodoc
const $Curl = _$CurlTearOff();

/// @nodoc
mixin _$Curl {
  CurlMethod get method => throw _privateConstructorUsedError;
  Uri get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurlCopyWith<Curl> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurlCopyWith<$Res> {
  factory $CurlCopyWith(Curl value, $Res Function(Curl) then) =
      _$CurlCopyWithImpl<$Res>;
  $Res call({CurlMethod method, Uri url});
}

/// @nodoc
class _$CurlCopyWithImpl<$Res> implements $CurlCopyWith<$Res> {
  _$CurlCopyWithImpl(this._value, this._then);

  final Curl _value;
  // ignore: unused_field
  final $Res Function(Curl) _then;

  @override
  $Res call({
    Object? method = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as CurlMethod,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc
abstract class _$CurlCopyWith<$Res> implements $CurlCopyWith<$Res> {
  factory _$CurlCopyWith(_Curl value, $Res Function(_Curl) then) =
      __$CurlCopyWithImpl<$Res>;
  @override
  $Res call({CurlMethod method, Uri url});
}

/// @nodoc
class __$CurlCopyWithImpl<$Res> extends _$CurlCopyWithImpl<$Res>
    implements _$CurlCopyWith<$Res> {
  __$CurlCopyWithImpl(_Curl _value, $Res Function(_Curl) _then)
      : super(_value, (v) => _then(v as _Curl));

  @override
  _Curl get _value => super._value as _Curl;

  @override
  $Res call({
    Object? method = freezed,
    Object? url = freezed,
  }) {
    return _then(_Curl(
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as CurlMethod,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$_Curl extends _Curl {
  _$_Curl({required this.method, required this.url}) : super._();

  @override
  final CurlMethod method;
  @override
  final Uri url;

  @override
  String toString() {
    return 'Curl(method: $method, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Curl &&
            const DeepCollectionEquality().equals(other.method, method) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(method),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$CurlCopyWith<_Curl> get copyWith =>
      __$CurlCopyWithImpl<_Curl>(this, _$identity);
}

abstract class _Curl extends Curl {
  factory _Curl({required CurlMethod method, required Uri url}) = _$_Curl;
  _Curl._() : super._();

  @override
  CurlMethod get method;
  @override
  Uri get url;
  @override
  @JsonKey(ignore: true)
  _$CurlCopyWith<_Curl> get copyWith => throw _privateConstructorUsedError;
}
