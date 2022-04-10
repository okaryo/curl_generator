import 'package:curl_generator/controller/curl_controller.dart';
import 'package:curl_generator/model/curl/curl.dart';
import 'package:curl_generator/model/method/method.dart';
import 'package:curl_generator/model/params/param.dart';
import 'package:curl_generator/model/params/params.dart';
import 'package:curl_generator/model/url/url.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('#constructor', () {
    test('should initialize curl state', () {
      final actual = CurlController().debugState;
      final expected = Curl(
        method: Method.get,
        url: const Url('https://sample.com', Params([Param('', '')])),
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
      final expected = const Url('https://new.com', Params([Param('', '')]));

      expect(actual, expected);
    });
  });

  group('#updateParamKey', () {
    test('should update param key', () {
      final controller = CurlController();
      controller.addParam();
      controller.updateParamKey('key1', 1);

      final actual = controller.debugState.url.params;
      final expected = const Params([
        Param('', ''),
        Param('key1', ''),
      ]);

      expect(actual, expected);
    });
  });

  group('#updateParamValue', () {
    test('should update param value', () {
      final controller = CurlController();
      controller.addParam();
      controller.updateParamValue('value1', 1);

      final actual = controller.debugState.url.params;
      final expected = const Params([
        Param('', ''),
        Param('', 'value1'),
      ]);

      expect(actual, expected);
    });
  });

  group('#addParams', () {
    test('should add new param', () {
      final controller = CurlController();
      controller.addParam();

      final actual = controller.debugState.url.params;
      final expected = const Params([
        Param('', ''),
        Param('', ''),
      ]);

      expect(actual, expected);
    });
  });

  group('#removeLastParams', () {
    test('should add new param', () {
      final controller = CurlController();
      controller.updateParamKey('key1', 0);
      controller.addParam();
      controller.updateParamKey('key2', 1);
      controller.removeLastParam();

      final actual = controller.debugState.url.params;
      final expected = const Params([
        Param('key1', ''),
      ]);

      expect(actual, expected);
    });
  });
}
