import 'package:curl_generator/model/params.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'url.freezed.dart';

@freezed
class Url with _$Url {
  const factory Url(String url, [@Default(Params([])) Params params]) = _Url;

  const Url._();

  String get string {
    if (params.isEmpty || params.queries.isEmpty) return url;

    return '$url?${params.queries}';
  }
}
