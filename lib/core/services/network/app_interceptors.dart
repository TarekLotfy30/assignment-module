import 'dart:developer';

import 'package:dio/dio.dart';

class AppInterceptors extends Interceptor {
  final String _logger = 'AppInterceptors';
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log('REQUEST[${options.method}] => PATH: ${options.path}', name: _logger);

    // Add authentication token if available
    final token = _getAuthToken();
    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    options.headers['Content-Type'] = 'application/json';
    options.headers['Accept'] = 'application/json';
    options.headers['lang'] = 'en';

    _logRequest(options);

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log(
      'RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}',
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
    // return SecureStorage.getToken();
    return null;
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
