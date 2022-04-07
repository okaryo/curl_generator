// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UrlTearOff {
  const _$UrlTearOff();

  _Url call(String url, [Params params = const Params([])]) {
    return _Url(
      url,
      params,
    );
  }
}

/// @nodoc
const $Url = _$UrlTearOff();

/// @nodoc
mixin _$Url {
  String get url => throw _privateConstructorUsedError;
  Params get params => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UrlCopyWith<Url> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlCopyWith<$Res> {
  factory $UrlCopyWith(Url value, $Res Function(Url) then) =
      _$UrlCopyWithImpl<$Res>;
  $Res call({String url, Params params});

  $ParamsCopyWith<$Res> get params;
}

/// @nodoc
class _$UrlCopyWithImpl<$Res> implements $UrlCopyWith<$Res> {
  _$UrlCopyWithImpl(this._value, this._then);

  final Url _value;
  // ignore: unused_field
  final $Res Function(Url) _then;

  @override
  $Res call({
    Object? url = freezed,
    Object? params = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      params: params == freezed
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as Params,
    ));
  }

  @override
  $ParamsCopyWith<$Res> get params {
    return $ParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value));
    });
  }
}

/// @nodoc
abstract class _$UrlCopyWith<$Res> implements $UrlCopyWith<$Res> {
  factory _$UrlCopyWith(_Url value, $Res Function(_Url) then) =
      __$UrlCopyWithImpl<$Res>;
  @override
  $Res call({String url, Params params});

  @override
  $ParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$UrlCopyWithImpl<$Res> extends _$UrlCopyWithImpl<$Res>
    implements _$UrlCopyWith<$Res> {
  __$UrlCopyWithImpl(_Url _value, $Res Function(_Url) _then)
      : super(_value, (v) => _then(v as _Url));

  @override
  _Url get _value => super._value as _Url;

  @override
  $Res call({
    Object? url = freezed,
    Object? params = freezed,
  }) {
    return _then(_Url(
      url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      params == freezed
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as Params,
    ));
  }
}

/// @nodoc

class _$_Url extends _Url {
  const _$_Url(this.url, [this.params = const Params([])]) : super._();

  @override
  final String url;
  @JsonKey()
  @override
  final Params params;

  @override
  String toString() {
    return 'Url(url: $url, params: $params)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Url &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.params, params));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(params));

  @JsonKey(ignore: true)
  @override
  _$UrlCopyWith<_Url> get copyWith =>
      __$UrlCopyWithImpl<_Url>(this, _$identity);
}

abstract class _Url extends Url {
  const factory _Url(String url, [Params params]) = _$_Url;
  const _Url._() : super._();

  @override
  String get url;
  @override
  Params get params;
  @override
  @JsonKey(ignore: true)
  _$UrlCopyWith<_Url> get copyWith => throw _privateConstructorUsedError;
}
