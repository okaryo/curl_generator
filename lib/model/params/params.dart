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

  Params add(Param param) => Params([...values, param]);

  Params removeLast() {
    if (isEmpty) return this;

    final List<Param> newValues = [];
    for (int i = 0; i < this.values.length; i++) {
      if (i != this.values.length - 1) newValues.add(this.values[i]);
    }
    return Params(newValues);
  }

  Params updateParamKeyAt(String key, int index) {
    final newValues = this.values.asMap().entries.map((entry) {
      final param = entry.value;

      if (entry.key == index) return Param(key, param.value);
      return param;
    }).toList();
    return Params(newValues);
  }

  Params updateParamValueAt(String value, int index) {
    final newValues = this.values.asMap().entries.map((entry) {
      final param = entry.value;

      if (entry.key == index) return Param(param.key, value);
      return param;
    }).toList();
    return Params(newValues);
  }
}
