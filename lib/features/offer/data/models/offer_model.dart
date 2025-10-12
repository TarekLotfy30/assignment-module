// translate-me-ignore-all-file
import '../../../../core/enum/offer_types.dart';

class OfferModel {

  OfferModel({
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
              ?.map((v) => OfferDetail.fromJson(v as Map<String, dynamic>))
              .toList() ??
          [],
      branchesList:
          (json['branches_list'] as List<dynamic>?)
              ?.map((v) => Branch.fromJson(v as Map<String, dynamic>))
              .toList() ??
          [],
    );
  }
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

  OfferTypesEnum get categoryType => OfferTypesEnum.values.firstWhere(
    (e) => e.getArabicName() == _category,
    orElse: () => OfferTypesEnum.values.first, //default
  );
}

class OfferDetail {

  OfferDetail({required this.id, required this.title});

  factory OfferDetail.fromJson(Map<String, dynamic> json) {
    return OfferDetail(id: json['id'] ?? '', title: json['title'] ?? '');
  }
  final String id;
  final String title;
}

class Branch {

  Branch({required this.id, required this.location});

  factory Branch.fromJson(Map<String, dynamic> json) {
    return Branch(id: json['id'] ?? '', location: json['location'] ?? '');
  }
  final String id;
  final String location;
}
