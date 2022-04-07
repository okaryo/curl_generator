import 'package:freezed_annotation/freezed_annotation.dart';

import 'param.dart';

part 'params.freezed.dart';

@freezed
class Params with _$Params {
  const factory Params(List<Param> values) = _Params;

  const Params._();

  String get queries {
    return values.fold('', (queries, param) {
      if (param.isValid()) {
        if (queries.isEmpty) return param.query;
        return '$queries&${param.query}';
      }

      return queries;
    });
  }

  bool get isEmpty => values.isEmpty;
}
