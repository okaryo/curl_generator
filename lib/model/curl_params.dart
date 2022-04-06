import 'package:freezed_annotation/freezed_annotation.dart';

import 'curl_param.dart';

part 'curl_params.freezed.dart';

@freezed
class CurlParams with _$CurlParams {
  const factory CurlParams(List<CurlParam> values) = _CurlParams;

  const CurlParams._();

  String get queries {
    return values.fold('', (queries, param) {
      if (param.isValid()) {
        if (queries.isEmpty) return param.query;
        return '$queries&${param.query}';
      }

      return queries;
    });
  }
}
