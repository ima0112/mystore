import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:mystore/utils/http_client/logger_interceptor.dart';

@module
abstract class RegisterModule {
  @Named("BaseUrl")
  String get baseUrl => '';

  @lazySingleton
  Dio client(@Named('BaseUrl') String url) {
    final dio = Dio(
      BaseOptions(
        baseUrl: url,
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );

    if (kDebugMode) {
      dio.interceptors.add(LoggerInterceptor());
    }

    return dio;
  }
}
