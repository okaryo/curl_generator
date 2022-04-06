import 'package:curl_generator/controller/curl_controller.dart';
import 'package:curl_generator/model/curl.dart';
import 'package:curl_generator/model/method.dart';
import 'package:curl_generator/model/url.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('#constructor', () {
    test('should initialize curl state', () {
      final actual = CurlController().debugState;
      final expected = Curl(
        method: Method.get,
        url: const Url('https://sample.com'),
      );

      expect(actual, expected);
    });
  });

  group('#setMethodBy', () {
    test('should set new curl method', () {
      final controller = CurlController();
      controller.setMethodBy(1);

      final actual = controller.debugState.method;
      final expected = Method.post;

      expect(actual, expected);
    });
  });

  group('#setUrl', () {
    test('should set new curl url', () {
      final controller = CurlController();
      controller.setUrl('https://new.com');

      final actual = controller.debugState.url;
      final expected = const Url('https://new.com');

      expect(actual, expected);
    });
  });
}
