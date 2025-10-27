import '../../../../../core/models/base_model.dart';
import 'countries.dart';

class Cities extends BaseModel {
  final int? id;
  final String? name;
  final int? countryId;
  final String? nameEn;
  final Countries? countries;

  const Cities({
    this.id,
    this.name,
    this.countryId,
    this.nameEn,
    this.countries,
  });

  factory Cities.fromJson(Map<String, dynamic> data) => Cities(
    id: data['id'] as int?,
    name: data['name'] as String?,
    countryId: data['country_id'] as int?,
    nameEn: data['name_en'] as String?,
    countries: data['countries'] == null
        ? null
        : Countries.fromJson(data['countries'] as Map<String, dynamic>),
  );

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'country_id': countryId,
      'name_en': nameEn,
      'countries': countries?.toJson(),
    };
  }

  @override
  List<Object?> get props => [id, name, countryId, nameEn, countries];
}
