import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'api_consumer.dart';
//import 'app_interceptors.dart';
import 'end_points.dart';

// translate-me-ignore-all-file
class DioConsumer implements ApiConsumer {
  DioConsumer._();
  final String _logger = 'DioHelper';
  late final Dio _client;

  void initialize() {
    log(
      'Initializing DioConsumer with baseUrl: ${EndPoints.baseUrl}',
      name: _logger,
    );
    _client = Dio(
      BaseOptions(
        baseUrl: EndPoints.baseUrl,
        // Connection timeouts - balanced for most use cases
        connectTimeout: const Duration(seconds: 15), // Connection establishment
        sendTimeout: const Duration(seconds: 30), // Sending request data
        receiveTimeout: const Duration(seconds: 30), // Receiving response data
        // Response handling
        responseType: ResponseType.json, // Auto-parse JSON responses
        receiveDataWhenStatusError: true, // Get error response body
        // Headers configuration
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'User-Agent': 'YourApp/1.0.0', // Replace with your app info
        },
        preserveHeaderCase: false, // Standard lowercase headers
        // Redirect handling
        followRedirects: true,
        maxRedirects: 5,
        // Connection settings
        persistentConnection: true, // Reuse connections for better performance
        // Collection format for query parameters
        listFormat: ListFormat.multi, // Standard format: param=val1&param=val2
        // Status validation
        validateStatus: (status) => status! < 500,
      ),
    );

    if (kDebugMode) {
      _client.interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
          requestHeader: true,
          responseHeader: true,
          error: true,
          request: true,
          logPrint: (object) => log(object.toString(), name: _logger),
        ),
      );
    }
  }

  // Method to add custom headers
  void addHeader(String key, String value) {
    _client.options.headers[key] = value;
  }

  // Method to remove headers
  void removeHeader(String key) {
    _client.options.headers.remove(key);
  }

  @override
  Future delete({
    required String endPoint,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _client.delete(
      endPoint,
      queryParameters: queryParameters,
    );
    return response.data;
  }

  /// Performs a GET request to the specified endpoint.
  ///
  /// [endPoint] The endpoint path (required).
  /// [params] Optional query parameters.
  ///
  /// Returns a [Future] containing the server response.
  @override
  Future get({required String endPoint, Map<String, dynamic>? params}) async {
    final response = await _client.get(endPoint, queryParameters: params);
    return response.data;
  }

  @override
  Future post({
    required String endPoint,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _client.post(
      endPoint,
      data: body,
      queryParameters: queryParameters,
    );
    return response.data;
  }

  @override
  Future put({
    required String endPoint,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
  }) async {
    final response = await _client.put(
      endPoint,
      data: body,
      queryParameters: queryParameters,
    );
    return response.data;
  }
}
