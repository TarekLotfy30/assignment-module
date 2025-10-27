import '../../../../core/models/base_model.dart';

class OfferDetail extends BaseModel {
  final String? id;
  final String? title;

  const OfferDetail({required this.id, required this.title});

  factory OfferDetail.fromJson(Map<String, dynamic> json) {
    return OfferDetail(
      id: json['id'] as String?,
      title: json['title'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {"id": id, "title": title};
  }

  @override
  List<Object?> get props => [id, title];
}
