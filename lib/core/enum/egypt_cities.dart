enum EgyptCitiesEnum {
  cairo,
  giza,
  portsaid,
  assuit,
  mansoura,
  luxor;

  String getArabicName() {
    switch (this) {
      case EgyptCitiesEnum.cairo:
        return 'القاهرة';
      case EgyptCitiesEnum.giza:
        return 'الجيزة';
      case EgyptCitiesEnum.portsaid:
        return 'بورسعيد';
      case EgyptCitiesEnum.assuit:
        return 'أسيوط';
      case EgyptCitiesEnum.mansoura:
        return 'المنصورة';
      case EgyptCitiesEnum.luxor:
        return "الأقصر";
    }
  }
}
