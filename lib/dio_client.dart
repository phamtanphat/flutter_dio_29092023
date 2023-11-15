import 'package:dio/dio.dart';

class DioClient {
  static final DioClient _instance = DioClient._internal();
  Dio? _dio;

  static DioClient getInstance(){
    return _instance;
  }

  DioClient._internal() {
    _dio ??= Dio(BaseOptions(
      baseUrl: "https://jsonplaceholder.typicode.com/",
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      sendTimeout: const Duration(seconds: 30),
    ));
  }
}