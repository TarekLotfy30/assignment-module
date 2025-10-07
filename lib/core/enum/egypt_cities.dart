enum EgyptCities {
  mansoura,
  suez,
  assuit,
  alex,
  giza;

  String getArabicName() {
    switch (this) {
      case mansoura:
        return "المنصورة";
      case suez:
        return "السويس";
      case assuit:
        return "أسيوط";
      case alex:
        return "الإسكندرية";
      case giza:
        return "الجيزة";
    }
  }
}
