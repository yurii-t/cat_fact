import 'package:dio/dio.dart';

class DioClient {
  final String _baseUrl;
  const DioClient(this._baseUrl);
  BaseOptions _createBaseOptions() => BaseOptions(
        baseUrl: _baseUrl,
      );

  Dio create() => Dio(_createBaseOptions());
}
