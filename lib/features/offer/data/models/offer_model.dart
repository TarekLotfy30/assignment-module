import 'package:equatable/equatable.dart';
import '../../../../core/enum/offer_types.dart';
import '../../../../core/models/base_model.dart';
import 'branch_model.dart';
import 'offer_detail.dart';

class OfferModel extends Equatable implements BaseModel {
  final String? id;
  final String? _category;
  final String? location;
  final String? title;
  final String? description;
  final String? coverPhoto;
  final String? profilePhoto;
  final String? imageUrl;
  final int? discount;
  final bool? hasDiscount;
  final List<OfferDetail> offerDetailsList;
  final List<Branch> branchesList;

  const OfferModel({
    required this.id,
    required String category,
    required this.location,
    required this.title,
    required this.description,
    required this.coverPhoto,
    required this.profilePhoto,
    required this.imageUrl,
    required this.discount,
    required this.hasDiscount,
    required this.offerDetailsList,
    required this.branchesList,
  }) : _category = category;

  @override
  factory OfferModel.fromJson(Map<String, dynamic> json) {
    return OfferModel(
      id: json['id'] as String?,
      category: json['category'] as String,
      location: json['location'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      coverPhoto: json['cover_photo'] as String?,
      profilePhoto: json['profile_photo'] as String?,
      imageUrl: json['image_url'] as String?,
      discount: json['discount'] as int?,
      hasDiscount: json['has_discount'] as bool?,
      offerDetailsList:
          (json['offer_details_list'] as List<dynamic>?)
              ?.map(
                (item) => OfferDetail.fromJson(item as Map<String, dynamic>),
              )
              .toList() ??
          [],
      branchesList:
          (json['branches_list'] as List<dynamic>?)
              ?.map((item) => Branch.fromJson(item as Map<String, dynamic>))
              .toList() ??
          [],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "category": _category,
      "location": location,
      "title": title,
      "description": description,
      "cover_photo": coverPhoto,
      "profile_photo": profilePhoto,
      "image_url": imageUrl,
      "discount": discount,
      "has_discount": hasDiscount,
      "offer_details_list": offerDetailsList.map((e) => e.toJson()).toList(),
      "branches_list": branchesList.map((e) => e.toJson()).toList(),
    };
  }

  OfferTypesEnum get categoryType => OfferTypesEnum.values.firstWhere(
    (e) => e.getArabicName() == _category,
    orElse: () => OfferTypesEnum.values.first, //default
  );

  @override
  List<Object?> get props => [
    id,
    _category,
    location,
    title,
    description,
    coverPhoto,
    profilePhoto,
    imageUrl,
    discount,
    hasDiscount,
    offerDetailsList,
    branchesList,
  ];
}
