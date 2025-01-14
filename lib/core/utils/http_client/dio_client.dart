import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mystore/core/utils/http_client/http_client.dart';

@Injectable(as: MyHttpClient)
class MyDioClient implements MyHttpClient {
  final Dio dio;

  MyDioClient({required this.dio});

  @override
  Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await dio.getUri(Uri(path: '/$endpoint'));
    return _handleReponse(response);
  }

  @override
  Future<Map<String, dynamic>> post(String endpoint, dynamic data) async {
    final response = await dio.postUri(Uri(path: '/$endpoint'), data: data);
    return _handleReponse(response);
  }

  @override
  Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await dio.putUri(Uri(path: '/$endpoint'), data: data);
    return _handleReponse(response);
  }

  @override
  Future<Map<String, dynamic>> delete(String endpoint) async {
    final response = await dio.deleteUri(Uri(path: '/$endpoint'));
    return _handleReponse(response);
  }

  Map<String, dynamic> _handleReponse(Response response) {
    if (response.statusCode == 200) {
      return json.decode(response.data);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  }
}
