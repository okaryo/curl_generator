enum CurlMethod { get, post, put, delete }

extension CurlMethodExtension on CurlMethod {
  static CurlMethod from(int index) {
    return CurlMethod.values.firstWhere((method) => method.index == index);
  }

  String get string {
    switch (this) {
      case CurlMethod.get:
        return 'GET';
      case CurlMethod.post:
        return 'POST';
      case CurlMethod.put:
        return 'PUT';
      case CurlMethod.delete:
        return 'DELETE';
    }
  }
}
