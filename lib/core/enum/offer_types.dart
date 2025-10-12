enum OfferTypesEnum {
  all,
  restaurants,
  libraries,
  entertainments,
  market;

  String getArabicName() {
    switch (this) {
      case all:
        return 'الكل';
      case restaurants:
        return 'مطاعم';
      case libraries:
        return 'مكتبات';
      case entertainments:
        return 'ترفيهى';
      case market:
        return 'ماركت';
    }
  }
}
