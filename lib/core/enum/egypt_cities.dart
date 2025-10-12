enum EgyptCities {
  cairo,
  giza,
  portsaid,
  assuit,
  mansoura,
  luxor;

  String getArabicName() {
    switch (this) {
      case EgyptCities.cairo:
        return 'القاهرة';
      case EgyptCities.giza:
        return 'الجيزة';
      case EgyptCities.portsaid:
        return 'بورسعيد';
      case EgyptCities.assuit:
        return 'أسيوط';
      case EgyptCities.mansoura:
        return 'المنصورة';
      case EgyptCities.luxor:
        return "الأقصر";
    }
  }
}
