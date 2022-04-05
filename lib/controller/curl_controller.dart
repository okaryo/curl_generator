import 'package:curl_generator/model/curl.dart';
import 'package:curl_generator/model/curl_method.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final curlProvider = StateNotifierProvider<CurlController, Curl>((_) {
  return CurlController();
});

class CurlController extends StateNotifier<Curl> {
  CurlController() : super(Curl(method: CurlMethod.get, url: Uri.parse('https://sample.com')));

  setMethod(CurlMethod method) => state = state.copyWith(method: method);

  setUrl(String url) => state = state.copyWith(url: Uri.parse(url));
}