import 'package:curl_generator/controller/curl_controller.dart';
import 'package:curl_generator/model/curl.dart';
import 'package:curl_generator/model/curl_method.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('#constructor', () {
    test('should initialize curl state', () {
      final actual = CurlController().debugState;
      final expected = Curl(method: CurlMethod.get, url: Uri.parse('https://sample.com'));

      expect(actual, expected);
    });
  });

  group('#setMethodBy', () {
    test('should set new curl method', () {
      final controller = CurlController();
      controller.setMethodBy(1);

      final actual = controller.debugState.method;
      final expected = CurlMethod.post;

      expect(actual, expected);
    });
  });

  group('#setUrl', () {
    test('should set new curl url', () {
      final controller = CurlController();
      controller.setUrl('https://new.com');

      final actual = controller.debugState.url;
      final expected = Uri.parse('https://new.com');

      expect(actual, expected);
    });
  });
}
