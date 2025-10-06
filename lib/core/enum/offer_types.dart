enum OfferTypesEnum {
  restaurants,
  libraries,
  entertainments,
  market;

  String getArabicName() {
    switch (this) {
      case restaurants:
        return "مطاعم";
      case libraries:
        return "مكتبات";
      case entertainments:
        return "ترفيهى";
      case market:
        return "ماركت";
    }
  }
}
