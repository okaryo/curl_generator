import 'package:curl_generator/model/param.dart';
import 'package:curl_generator/model/params.dart';
import 'package:curl_generator/model/url.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('#string', () {
    group('when params is empty', () {
      test('should return only url', () {
        final actual = const Url('https://sample.com', Params([])).string;
        final expected = 'https://sample.com';

        expect(actual, expected);
      });
    });

    group('when params is not empty but queries is empty', () {
      test('should return only url', () {
        final actual = const Url('https://sample.com', Params([Param('', 'value')])).string;
        final expected = 'https://sample.com';

        expect(actual, expected);
      });
    });

    group('when params is not empty', () {
      test('should return only url', () {
        final actual = const Url(
          'https://sample.com',
          Params([Param('key1', 'value1'), Param('key2', 'value2')]),
        ).string;
        final expected = 'https://sample.com?key1=value1&key2=value2';

        expect(actual, expected);
      });
    });
  });
}
