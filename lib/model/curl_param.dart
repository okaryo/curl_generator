import 'package:freezed_annotation/freezed_annotation.dart';

part 'curl_param.freezed.dart';

@freezed
class CurlParam with _$CurlParam {
  const factory CurlParam(String key, String value) = _CurlParam;

  const CurlParam._();

  String get query => '$key=$value';

  bool isValid() => key.isNotEmpty && value.isNotEmpty;
}
