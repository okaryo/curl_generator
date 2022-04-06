import 'package:freezed_annotation/freezed_annotation.dart';

part 'param.freezed.dart';

@freezed
class Param with _$Param {
  const factory Param(String key, String value) = _Param;

  const Param._();

  String get query => '$key=$value';

  bool isValid() => key.isNotEmpty && value.isNotEmpty;
}
