// translate-me-ignore-all-file
import 'package:equatable/equatable.dart';

import '../../../../core/enum/offer_types.dart';
import 'branch_model.dart';
import 'offer_detail.dart';

class OfferModel extends Equatable {
  final String id;
  final String _category;
  final String location;
  final String title;
  final String description;
  final String coverPhoto;
  final String profilePhoto;
  final String imageUrl;
  final int discount;
  final bool hasDiscount;
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

  factory OfferModel.fromJson(Map<String, dynamic> json) {
    return OfferModel(
      id: json['id'] ?? '',
      category: json['category'] ?? '',
      location: json['location'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      coverPhoto: json['cover_photo'] ?? '',
      profilePhoto: json['profile_photo'] ?? '',
      imageUrl: json['image_url'] ?? '',
      discount: json['discount'] ?? 0,
      hasDiscount: json['has_discount'] ?? false,
      offerDetailsList:
          (json['offer_details_list'] as List<dynamic>?)
              ?.map((item) => OfferDetail.fromJson(item))
              .toList() ??
          [],
      branchesList:
          (json['branches_list'] as List<dynamic>?)
              ?.map((item) => Branch.fromJson(item))
              .toList() ??
          [],
    );
  }

  OfferTypesEnum get categoryType => OfferTypesEnum.values.firstWhere(
    (e) => e.getArabicName() == _category,
    orElse: () => OfferTypesEnum.values.first, //default
  );

  @override
  List<Object?> get props => [
    id,
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
