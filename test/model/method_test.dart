import 'package:curl_generator/model/method.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('#from', () {
    test('should return CurlMethod', () {
      final actual = MethodExtension.from(0);
      final expected = Method.get;

      expect(actual, expected);
    });
  });

  group('#string', () {
    group('when method is get', () {
      test('should return corresponding string', () {
        final actual = Method.get.string;
        final expected = 'GET';

        expect(actual, expected);
      });
    });

    group('when method is post', () {
      test('should return corresponding string', () {
        final actual = Method.post.string;
        final expected = 'POST';

        expect(actual, expected);
      });
    });

    group('when method is put', () {
      test('should return corresponding string', () {
        final actual = Method.put.string;
        final expected = 'PUT';

        expect(actual, expected);
      });
    });

    group('when method is delete', () {
      test('should return corresponding string', () {
        final actual = Method.delete.string;
        final expected = 'DELETE';

        expect(actual, expected);
      });
    });
  });
}
