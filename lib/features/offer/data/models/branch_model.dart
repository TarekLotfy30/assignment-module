import 'package:equatable/equatable.dart';

class Branch extends Equatable {
  final String id;
  final String location;

  const Branch({required this.id, required this.location});

  factory Branch.fromJson(Map<String, dynamic> json) {
    return Branch(id: json['id'] ?? '', location: json['location'] ?? '');
  }

  Map<String, dynamic> toJson() {
    return {"id": id, "location": location};
  }

  @override
  List<Object?> get props => [id, location];
}
