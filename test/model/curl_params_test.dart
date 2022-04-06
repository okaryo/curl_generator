import 'package:curl_generator/model/curl_param.dart';
import 'package:curl_generator/model/curl_params.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('#quesries', () {
    group('when params is empty', () {
      test('should return empty string', () {
        final actual = const CurlParams([]).queries;
        final expected = '';

        expect(actual, expected);
      });
    });

    group('when params length is one', () {
      test('should return one query', () {
        final actual = const CurlParams([
          CurlParam('key', 'value'),
        ]).queries;
        final expected = 'key=value';

        expect(actual, expected);
      });
    });

    group('when invalid params is included', () {
      test('should return queries without invalid params', () {
        final actual = const CurlParams([
          CurlParam('key1', 'value1'),
          CurlParam('', 'value2'),
          CurlParam('key3', 'value3'),
        ]).queries;
        final expected = 'key1=value1&key3=value3';

        expect(actual, expected);
      });
    });

    group('when invalid params is not included', () {
      test('should return queries', () {
        final actual = const CurlParams([
          CurlParam('key1', 'value1'),
          CurlParam('key2', 'value2'),
          CurlParam('key3', 'value3'),
        ]).queries;
        final expected = 'key1=value1&key2=value2&key3=value3';

        expect(actual, expected);
      });
    });
  });
}
