import 'package:curl_generator/model/curl_method.dart';

class Curl {
  final CurlMethod method;
  final Uri url;

  const Curl({
    required final this.method,
    required final this.url,
  });
}
