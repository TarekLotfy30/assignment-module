import '../../../../core/models/base_model.dart';

class Branch implements BaseModel {
  final String? id;
  final String? location;

  const Branch({required this.id, required this.location});

  @override
  factory Branch.fromJson(Map<String, dynamic> json) {
    return Branch(
      id: json['id'] as String?,
      location: json['location'] as String?,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {"id": id, "location": location};
  }
}
