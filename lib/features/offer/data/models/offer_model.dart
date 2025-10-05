// translate-me-ignore-all-file
class OfferModel {
  final String? id;
  final String? category;
  final String? location;
  final String? title;
  final String? description;
  final String? coverPhoto;
  final String? profilePhoto;
  final String? imageUrl;
  final int? discount;
  final bool? hasDiscount;
  final List<OfferDetail>? offerDetailsList;
  final List<Branch>? branchesList;

  OfferModel({
    required this.id,
    required this.location,
    required this.category,
    required this.title,
    required this.description,
    required this.coverPhoto,
    required this.profilePhoto,
    required this.imageUrl,
    required this.discount,
    required this.hasDiscount,
    required this.offerDetailsList,
    required this.branchesList,
  });

  factory OfferModel.fromJson(Map<String, dynamic> json) {
    return OfferModel(
      id: json['id'],
      category: json['category'],
      location: json['location'],
      title: json['title'],
      description: json['description'],
      coverPhoto: json['cover_photo'],
      profilePhoto: json['profile_photo'],
      imageUrl: json['image_url'],
      discount: json['discount'],
      hasDiscount: json['has_discount'],
      offerDetailsList: (json['offer_details_list'] as List<dynamic>?)
          ?.map((v) => OfferDetail.fromJson(v as Map<String, dynamic>))
          .toList(),
      branchesList: (json['branches_list'] as List<dynamic>?)
          ?.map((v) => Branch.fromJson(v as Map<String, dynamic>))
          .toList(),
    );
  }
}

class OfferDetail {
  final String? id;
  final String? title;

  OfferDetail({required this.id, required this.title});

  factory OfferDetail.fromJson(Map<String, dynamic> json) {
    return OfferDetail(id: json['id'], title: json['title']);
  }
}

class Branch {
  final String? id;
  final String? location;

  Branch({required this.id, required this.location});

  factory Branch.fromJson(Map<String, dynamic> json) {
    return Branch(id: json['id'], location: json['location']);
  }
}
