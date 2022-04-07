import 'package:curl_generator/model/curl/curl.dart';
import 'package:curl_generator/model/method/method.dart';
import 'package:curl_generator/model/url/url.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final curlProvider = StateNotifierProvider<CurlController, Curl>((_) {
  return CurlController();
});

class CurlController extends StateNotifier<Curl> {
  CurlController() : super(Curl.init());

  setMethodBy(int index) => state = state.copyWith(method: MethodExtension.from(index));

  setUrl(String url) => state = state.copyWith(url: Url(url));
}
