import 'package:curl_generator/model/param.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('#query', () {
    test('should return query string', () {
      final actual = const Param('key', 'value').query;
      final expected = 'key=value';

      expect(actual, expected);
    });
  });

  group('#isValid', () {
    group('when both key and value are not empty', () {
      test('should return true', () {
        final actual = const Param('key', 'value').isValid();

        expect(actual, isTrue);
      });
    });

    group('when key is empty', () {
      test('should return false', () {
        final actual = const Param('', 'value').isValid();

        expect(actual, isFalse);
      });
    });

    group('when value is empty', () {
      test('should return false', () {
        final actual = const Param('key', '').isValid();

        expect(actual, isFalse);
      });
    });

    group('when both key and value are empty', () {
      test('should return false', () {
        final actual = const Param('', '').isValid();

        expect(actual, isFalse);
      });
    });
  });
}
