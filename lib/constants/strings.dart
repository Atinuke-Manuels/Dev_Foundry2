import 'package:flutter/widgets.dart';


class AppStrings {
  static late Map<String, String> _localizedStrings;

  static Future<void> load(Locale locale) async {
    final translations = {
      'en': {
        // strings for home page
        'homeAppBarText': 'Atinuke Manuels',
        'homeAppBarSubText': 'Banana Island',
        'yourBalance': 'Your Balance',
        'topUpBtn': 'Top Up',
        'balanceWholeNumber': '\$9,532.',
        'balanceDecimal': '00',
        'newTrackBtnText': 'New Track',
        'orderUsBtnText': 'Order Us',
        'currentTrackingText': 'Current Tracking',
        'seeAllText': 'See All',
        'searchText': 'Search',
        'idNumberText': 'ID Number',
        'idNumber': 'F - ZR678W45',
        'locationText': 'ojuelegba',
        'locationSubText': 'Barracks',


      },

      /// spanish translation
      'es': {
        // strings for home page
        'homeAppBarText': 'Atinuke Manuels',
        'homeAppBarSubText': 'Banana Island',
        "yourBalance": "Tu saldo",
        'topUpBtn': 'Top Up',
        'balanceWholeNumber': '\$9,532.',
        'balanceDecimal': '00',
        'newTrackBtnText': 'Nueva Pista',
        'orderUsBtnText': 'Pídanos',
        'currentTrackingText': 'Seguimiento Actual',
        'seeAllText': 'Ver Todo',
        'searchText': 'Buscar',
        'idNumberText': 'ID Number',
        'idNumber': 'F - ZR678W45',
        'locationText': 'ojuelegba',
        'locationSubText': 'Barracks',


      },
      /// french translation
      'fr': {
        // strings for home page
        'homeAppBarText': 'Atinuke Manuels',
        'homeAppBarSubText': 'Banana Island',
        "yourBalance": "Votre solde",
        'topUpBtn': 'Top Up',
        'balanceWholeNumber': '\$9,532.',
        'balanceDecimal': '00',
        'newTrackBtnText': 'Nouvelle Piste',
        'orderUsBtnText': 'Commandez, chez Nous',
        'currentTrackingText': 'Suivi Actuel',
        'seeAllText': 'Voir Tout',
        'searchText': 'Rechercher',
        'idNumberText': 'ID Number',
        'idNumber': 'F - ZR678W45',
        'locationText': 'ojuelegba',
        'locationSubText': 'Barracks',


      },
    };

    _localizedStrings = translations[locale.languageCode] ??
        translations['en']!; // Default to English
  }

  // strings for home page
  String get homeAppBarText => _localizedStrings['homeAppBarText']!;
  String get homeAppBarSubText  => _localizedStrings['homeAppBarSubText']!;
  String get yourBalance  => _localizedStrings['yourBalance']!;
  String get topUpBtn  => _localizedStrings['topUpBtn']!;
  String get balanceWholeNumber  => _localizedStrings['balanceWholeNumber']!;
  String get balanceDecimal => _localizedStrings['balanceDecimal']!;
  String get newTrackBtnText => _localizedStrings['newTrackBtnText']!;
  String get orderUsBtnText => _localizedStrings['orderUsBtnText']!;
  String get currentTrackingText=> _localizedStrings['currentTrackingText']!;
  String get seeAllText=> _localizedStrings['seeAllText']!;
  String get searchText=> _localizedStrings['searchText']!;
  String get idNumberText=> _localizedStrings['idNumberText']!;
  String get idNumber=> _localizedStrings['idNumber']!;
  String get locationText=> _localizedStrings['locationText']!;
  String get locationSubText=> _localizedStrings['locationSubText']!;


  static AppStrings of(BuildContext context) {
    return Localizations.of<AppStrings>(context, AppStrings)!;
  }

}