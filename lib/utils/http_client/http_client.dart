abstract class MyHttpClient {
  Future<Map<String, dynamic>> get(String endpoint);
  Future<Map<String, dynamic>> post(String endpoint, dynamic data);
  Future<Map<String, dynamic>> put(String endpoint, dynamic data);
  Future<Map<String, dynamic>> delete(String endpoint);
}
