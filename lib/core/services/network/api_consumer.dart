abstract class ApiConsumer {
  Future<dynamic> get({
    required String endPoint,
    Map<String, dynamic>? params,
  });

  Future<dynamic> post({
    required String endPoint,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
  });

  Future<dynamic> put({
    required String endPoint,
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
  });

  Future<dynamic> delete({
    required String endPoint,
    Map<String, dynamic>? queryParameters,
  });
}
