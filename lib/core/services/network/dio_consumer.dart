// ignore_for_file: sort_constructors_first

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'api_consumer.dart';
import 'app_interceptors.dart';
import 'end_points.dart';

// translate-me-ignore-all-file
class DioConsumer implements ApiConsumer {
  final String _logger = 'DioHelper';
  late final Dio _client;

  DioConsumer() {
    _initializeDioClient();
    _attachInterceptors();
  }

  void _initializeDioClient() {
    _client = Dio(
      BaseOptions(
        baseUrl: EndPoints.baseUrl,
        connectTimeout: const Duration(seconds: 15),
        sendTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        responseType: ResponseType.json,
        receiveDataWhenStatusError: true,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        preserveHeaderCase: false,
        followRedirects: true,
        maxRedirects: 5,
        persistentConnection: true,
        listFormat: ListFormat.multi,
        validateStatus: (status) => status! < 500,
      ),
    );
  }

  void _attachInterceptors() {
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
    _client.interceptors.add(AppInterceptors());
  }

  @override
  Future get({
    required String endPoint,
    Map<String, dynamic>? params,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
    bool overrideDefaultHeaders = false,
  }) async {
    final effectiveHeaders = _mergeHeaders(headers, overrideDefaultHeaders);
    final Response<dynamic> response = await _client.get(
      endPoint,
      queryParameters: params,
      options: Options(headers: effectiveHeaders),
    );
    return response.data;
  }

  @override
  Future post({
    required String endPoint,
    Map<String, dynamic>? params,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
    bool overrideDefaultHeaders = false,
  }) async {
    final effectiveHeaders = _mergeHeaders(headers, overrideDefaultHeaders);

    final Response<dynamic> response = await _client.post(
      endPoint,
      data: body,
      queryParameters: params,
      options: Options(headers: effectiveHeaders),
    );
    return response.data;
  }

  @override
  Future put({
    required String endPoint,
    Map<String, dynamic>? params,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
    bool overrideDefaultHeaders = false,
  }) async {
    final effectiveHeaders = _mergeHeaders(headers, overrideDefaultHeaders);
    final Response<dynamic> response = await _client.put(
      endPoint,
      data: body,
      queryParameters: params,
      options: Options(headers: effectiveHeaders),
    );

    return response.data;
  }

  @override
  Future delete({
    required String endPoint,
    Map<String, dynamic>? params,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
    bool overrideDefaultHeaders = false,
  }) async {
    final effectiveHeaders = _mergeHeaders(headers, overrideDefaultHeaders);
    final Response<dynamic> response = await _client.delete(
      endPoint,
      queryParameters: params,
      options: Options(headers: effectiveHeaders),
    );
    return response.data;
  }

  Map<String, dynamic>? _mergeHeaders(
    Map<String, dynamic>? customHeaders,
    bool overrideDefaultHeaders,
  ) {
    final mergedHeaders = {
      ..._client.options.headers,
      if (customHeaders != null) ...customHeaders,
    };
    return overrideDefaultHeaders
        ? customHeaders // Only use these headers for this request
        : mergedHeaders; // merge with defaults
  }
}
