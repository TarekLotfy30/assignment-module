import 'package:equatable/equatable.dart';

import 'base_model.dart';

class ResponseModel<T extends BaseModel<T>> extends Equatable {
  final List<T> data;
  final int currentPage;
  final int nextPage;
  final int totalCount;
  final int count;

  const ResponseModel({
    required this.data,
    required this.currentPage,
    required this.nextPage,
    required this.totalCount,
    required this.count,
  });

  factory ResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Map<String, dynamic>) fromJsonT,
  ) {
    return ResponseModel(
      data: (json["data"] as List<dynamic>)
          .map((item) => fromJsonT(item as Map<String, dynamic>))
          .toList(),
      currentPage: json["currentPage"],
      nextPage: json["nextPage"],
      totalCount: json["totalCount"],
      count: json["count"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.map((item) => item.toJson()).toList(),
      'currentPage': currentPage,
      'nextPage': nextPage,
      'totalCount': totalCount,
      'count': count,
    };
  }

  @override
  List<Object?> get props => [data, currentPage, nextPage, totalCount, count];
}
