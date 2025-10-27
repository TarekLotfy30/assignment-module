import '../../../../../core/models/base_model.dart';

class Countries extends BaseModel {
  final String? currency;
  final int? fawry;
  final int? credit;
  final int? electronicWallet;
  final int? wallet;
  final String? title;
  final String? showedTitle;

  const Countries({
    this.currency,
    this.fawry,
    this.credit,
    this.electronicWallet,
    this.wallet,
    this.title,
    this.showedTitle,
  });

  factory Countries.fromJson(Map<String, dynamic> data) => Countries(
    currency: data['currency'] as String?,
    fawry: data['fawry'] as int?,
    credit: data['credit'] as int?,
    electronicWallet: data['electronic_wallet'] as int?,
    wallet: data['wallet'] as int?,
    title: data['title'] as String?,
    showedTitle: data['showed_title'] as String?,
  );

  @override
  List<Object?> get props => [
    currency,
    fawry,
    credit,
    electronicWallet,
    wallet,
    title,
    showedTitle,
  ];

  @override
  Map<String, dynamic> toJson() {
    return {
      'currency': currency,
      'fawry': fawry,
      'credit': credit,
      'electronic_wallet': electronicWallet,
      'wallet': wallet,
      'title': title,
      'showed_title': showedTitle,
    };
  }
}
