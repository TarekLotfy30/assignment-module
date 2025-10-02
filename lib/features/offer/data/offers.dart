import 'package:flutter/material.dart';

class Offer {
  final String id = UniqueKey().toString();
  final String category;
  final String location;
  final String title;
  final String description;
  final String coverPhoto;
  final String profilePhoto;
  final String imageUrl;
  final int discount;
  final bool hasDiscount;
  //final OfferDetails details;

  Offer({
    //required this.details,
    required this.location,
    required this.category,
    required this.title,
    required this.description,
    required this.coverPhoto,
    required this.profilePhoto,
    required this.imageUrl,
    required this.discount,
    required this.hasDiscount,
  });
}

// class OfferDetails {
  

//   OfferDetails({
//     required this.phone,
//     required this.email,
//     required this.website,
//     required this.workingHours,
//     required this.address,
//   });
// }