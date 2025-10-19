abstract class ApiConsumer {
  Future<dynamic> get({
    required String endPoint,
    Map<String, dynamic>? params,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
    bool overrideDefaultHeaders = false,
  });

  Future<dynamic> post({
    required String endPoint,
    Map<String, dynamic>? params,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
    bool overrideDefaultHeaders = false,
  });

  Future<dynamic> put({
    required String endPoint,
    Map<String, dynamic>? params,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
    bool overrideDefaultHeaders = false,
  });

  Future<dynamic> delete({
    required String endPoint,
    Map<String, dynamic>? params,
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
    bool overrideDefaultHeaders = false,
  });
}
