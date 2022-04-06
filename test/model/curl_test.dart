import 'package:curl_generator/model/curl.dart';
import 'package:curl_generator/model/method.dart';
import 'package:curl_generator/model/url.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('#init', () {
    test('should initialize Curl', () {
      final actual = Curl.init();
      final expected = Curl(method: Method.get, url: const Url('https://sample.com'));

      expect(actual, expected);
    });
  });

  group('#command', () {
    test('should return curl command', () {
      final actual = Curl(
        method: Method.get,
        url: const Url('https://test.com'),
      ).command;
      final expected = 'curl -X GET https://test.com';

      expect(actual, expected);
    });
  });
}
