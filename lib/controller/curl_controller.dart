import 'package:curl_generator/model/curl/curl.dart';
import 'package:curl_generator/model/method/method.dart';
import 'package:curl_generator/model/params/param.dart';
import 'package:curl_generator/model/url/url.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final curlProvider = StateNotifierProvider.autoDispose<CurlController, Curl>((_) {
  return CurlController();
});

class CurlController extends StateNotifier<Curl> {
  CurlController() : super(Curl.init());

  setMethodBy(int index) => state = state.copyWith(method: MethodExtension.from(index));

  setUrl(String url) => state = state.copyWith(url: Url(url));

  updateParamKey(String key, int index) {
    final newParams = state.url.params.updateParamKeyAt(key, index);
    final newUrl = state.url.copyWith(params: newParams);
    state = state.copyWith(url: newUrl);
  }

  updateParamValue(String value, int index) {
    final newParams = state.url.params.updateParamValueAt(value, index);
    final newUrl = state.url.copyWith(params: newParams);
    state = state.copyWith(url: newUrl);
  }

  addParam() {
    final newParam = const Param('', '');
    final newParams = state.url.params.add(newParam);
    final newUrl = state.url.copyWith(params: newParams);
    state = state.copyWith(url: newUrl);
  }

  removeLastParam() {
    final newParams = state.url.params.removeLast();
    final newUrl = state.url.copyWith(params: newParams);
    state = state.copyWith(url: newUrl);
  }
}
