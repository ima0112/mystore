/// Exception thrown when a server error occurs.
/// 
/// This exception is used to indicate that an error has occurred on the server
/// side, which prevents the successful completion of a request.
class ServerException implements Exception {
  final String message;

  ServerException([this.message = 'An unknown server error occurred.']);

  @override
  String toString() => 'ServerException: $message';
}

/// Exception thrown when a cache-related error occurs.
/// 
/// This exception is typically used to indicate that an operation
/// involving a cache has failed, such as when attempting to read
/// from or write to a cache.
class CacheException implements Exception {
  final String message;

  CacheException([this.message = 'An unknown cache error occurred.']);

  @override
  String toString() => 'CacheException: $message';
}

/// Exception thrown when a network-related error occurs.
/// 
/// This exception can be used to indicate issues such as connectivity problems,
/// timeouts, or other network failures that prevent successful communication
/// with a remote server or service.
class NetworkException implements Exception {
  final String message;

  NetworkException([this.message = 'An unknown network error occurred.']);

  @override
  String toString() => 'NetworkException: $message';
}
