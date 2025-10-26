import 'dart:developer';

import 'package:dio/dio.dart';

class AppInterceptors extends Interceptor {
  final String _logger = 'AppInterceptors';
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log('REQUEST[${options.method}] => PATH: ${options.path}', name: _logger);

    // Add authentication token
    final token = _getAuthToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    _logRequest(options);

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log(
      'RESPONSE[${response.statusCode}]=>PATH: ${response.requestOptions.path}',
      name: _logger,
    );

    // Log successful response (disable in production)
    _logResponse(response);

    super.onResponse(response, handler);
  }

  @override
  Future onError(DioException err, ErrorInterceptorHandler handler) async {
    log(
      'ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}',
      name: _logger,
    );

    // Enhanced error handling and logging
    //_handleError(error);

    super.onError(err, handler);
  }

  // Get authentication token (implement based on your auth system)
  String? _getAuthToken() {
    // Implement token retrieval from secure storage
    //return SecureStorage.getToken();
    return "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6IkFibyBaZWlkIiwiaWQiOjIwNTY4OCwicm9sZSI6InN0dWRlbnQiLCJkYXRlIjoiM2I4MmY4NjQtZGQwMy00NGRmLWEyYjktMTA4MWVjZjY1Y2MwMTc2MDg2OTA3MzE0MSIsInN5c3RlbSI6IkVneXB0aWFuIFN5c3RlbSAtIEFyYWJpYyIsImdyYWRlIjoiR3JhZGUgMTAiLCJpYXQiOjE3NjA4NjkwNzMsImV4cCI6MTc2MDg2OTEzM30.73r42MkBWcy1f-sSM26uISxYU_SGFudduSB4VzVYCyA";
  }

  // Request logging (disable in production)
  void _logRequest(RequestOptions options) {
    log('🚀 REQUEST: ${options.method} ${options.uri}', name: _logger);
    log('📋 Headers: ${options.headers}', name: _logger);
    if (options.data != null) {
      log('📄 Data: ${options.data}', name: _logger);
    }
    if (options.queryParameters.isNotEmpty) {
      log('🔍 Query: ${options.queryParameters}', name: _logger);
    }
  }

  // Response logging (disable in production)
  void _logResponse(Response response) {
    log(
      '✅ RESPONSE: ${response.statusCode} ${response.requestOptions.uri}',
      name: _logger,
    );
    log('📄 Data: ${response.data}', name: _logger);
  }
}
