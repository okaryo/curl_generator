import 'package:curl_generator/model/curl.dart';
import 'package:curl_generator/model/curl_method.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('#command', () {
    test('should return curl command', () {
      final actual = Curl(method: CurlMethod.get, url: Uri.parse('https://test.com')).command;
      final expected = 'curl -X GET https://test.com';

      expect(actual, expected);
    });
  });
}
