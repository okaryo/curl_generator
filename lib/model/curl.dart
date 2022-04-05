import 'package:curl_generator/model/curl_method.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'curl.freezed.dart';

@freezed
class Curl with _$Curl {
  factory Curl({
    required CurlMethod method,
    required Uri url,
  }) = _Curl;

  const Curl._();
}
