// translate-me-ignore-all-file
class OffersTypes {
  final int id;
  final String title;
  final bool isSelected;

  OffersTypes({required this.id, required this.title, this.isSelected = false});
}

List<OffersTypes> offersTypes = [
  OffersTypes(id: 1, title: 'الكل', isSelected: true),
  OffersTypes(id: 2, title: 'مطاعم'),
  OffersTypes(id: 3, title: 'مكتبات'),
  OffersTypes(id: 4, title: 'ترفيهى'),
  OffersTypes(id: 3, title: 'ماركت'),
];
