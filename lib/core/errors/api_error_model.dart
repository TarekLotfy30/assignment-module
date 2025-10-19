class ApiErrorModel {
  const ApiErrorModel({this.errors, this.message, this.code});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) {
    return ApiErrorModel(
      code: json['code'],
      message: json['message'],
      errors: json['data'],
    );
  }

  final String? message;
  final int? code;
  final Map<String, dynamic>? errors;
}
