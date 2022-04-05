import 'package:curl_generator/model/curl_method.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('#from', () {
    test('should return CurlMethod', () {
      final actual = CurlMethodExtension.from(0);
      final expected = CurlMethod.get;

      expect(actual, expected);
    });
  });

  group('#string', () {
    group('when method is get', () {
      test('should return corresponding string', () {
        final actual = CurlMethod.get.string;
        final expected = 'GET';

        expect(actual, expected);
      });
    });

    group('when method is post', () {
      test('should return corresponding string', () {
        final actual = CurlMethod.post.string;
        final expected = 'POST';

        expect(actual, expected);
      });
    });

    group('when method is put', () {
      test('should return corresponding string', () {
        final actual = CurlMethod.put.string;
        final expected = 'PUT';

        expect(actual, expected);
      });
    });

    group('when method is delete', () {
      test('should return corresponding string', () {
        final actual = CurlMethod.delete.string;
        final expected = 'DELETE';

        expect(actual, expected);
      });
    });
  });
}
