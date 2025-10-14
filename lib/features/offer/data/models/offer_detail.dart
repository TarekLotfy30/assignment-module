import 'package:equatable/equatable.dart';

class OfferDetail extends Equatable {
  final String id;
  final String title;

  const OfferDetail({required this.id, required this.title});

  factory OfferDetail.fromJson(Map<String, dynamic> json) {
    return OfferDetail(id: json['id'] ?? '', title: json['title'] ?? '');
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "title": title};
  }

  @override
  List<Object?> get props => [id, title];
}
