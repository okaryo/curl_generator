import 'package:curl_generator/model/method.dart';
import 'package:curl_generator/model/url.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'curl.freezed.dart';

@freezed
class Curl with _$Curl {
  factory Curl({
    required Method method,
    required Url url,
  }) = _Curl;

  const Curl._();

  factory Curl.init() {
    return Curl(
      method: Method.get,
      url: const Url('https://sample.com'),
    );
  }

  String get command {
    return 'curl -X ${method.string} ${url.string}';
  }
}
