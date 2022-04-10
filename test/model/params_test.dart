import 'package:curl_generator/model/params/param.dart';
import 'package:curl_generator/model/params/params.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('#quesries', () {
    group('when params is empty', () {
      test('should return empty string', () {
        final actual = const Params([]).queries;
        final expected = '';

        expect(actual, expected);
      });
    });

    group('when params length is one', () {
      test('should return one query', () {
        final actual = const Params([
          Param('key', 'value'),
        ]).queries;
        final expected = 'key=value';

        expect(actual, expected);
      });
    });

    group('when invalid params is included', () {
      test('should return queries without invalid params', () {
        final actual = const Params([
          Param('key1', 'value1'),
          Param('', 'value2'),
          Param('key3', 'value3'),
        ]).queries;
        final expected = 'key1=value1&key3=value3';

        expect(actual, expected);
      });
    });

    group('when invalid params is not included', () {
      test('should return queries', () {
        final actual = const Params([
          Param('key1', 'value1'),
          Param('key2', 'value2'),
          Param('key3', 'value3'),
        ]).queries;
        final expected = 'key1=value1&key2=value2&key3=value3';

        expect(actual, expected);
      });
    });
  });

  group('#isEmpty', () {
    group('when values are empty', () {
      test('should return true', () {
        final actual = const Params([]).isEmpty;

        expect(actual, isTrue);
      });
    });

    group('when values are not empty', () {
      test('should return false', () {
        final actual = const Params([
          Param('key1', 'value1'),
          Param('key2', 'value2'),
          Param('key3', 'value3'),
        ]).isEmpty;

        expect(actual, isFalse);
      });
    });
  });

  group('#add', () {
    test('should add param to values', () {
      final actual = const Params([
        Param('key1', 'value1'),
        Param('key2', 'value2'),
      ]).add(const Param('key3', 'value3'));
      final expected = const Params([
        Param('key1', 'value1'),
        Param('key2', 'value2'),
        Param('key3', 'value3'),
      ]);

      expect(actual, expected);
    });
  });

  group('#removeLast', () {
    group('when values are empty', () {
      test('should not remove', () {
        final actual = const Params([]).removeLast();
        final expected = const Params([]);

        expect(actual, expected);
      });
    });

    group('when values are not empty', () {
      test('should remove last param', () {
        final actual = const Params([
          Param('key1', 'value1'),
          Param('key2', 'value2'),
        ]).removeLast();
        final expected = const Params([
          Param('key1', 'value1'),
        ]);

        expect(actual, expected);
      });
    });
  });

  group('#updateParamKeyAt', () {
    test('should update specified param key', () {
      final actual = const Params([
        Param('key1', 'value1'),
        Param('key2', 'value2'),
      ]).updateParamKeyAt('newKey', 1);
      final expected = const Params([
        Param('key1', 'value1'),
        Param('newKey', 'value2'),
      ]);

      expect(actual, expected);
    });
  });

  group('#updateParamValueAt', () {
    test('should update specified param value', () {
      final actual = const Params([
        Param('key1', 'value1'),
        Param('key2', 'value2'),
      ]).updateParamValueAt('newValue', 1);
      final expected = const Params([
        Param('key1', 'value1'),
        Param('key2', 'newValue'),
      ]);

      expect(actual, expected);
    });
  });
}
