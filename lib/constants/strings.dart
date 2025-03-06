import 'package:flutter/widgets.dart';


class AppStrings {
  static late Map<String, String> _localizedStrings;

  static Future<void> load(Locale locale) async {
    final translations = {
      'en': {
        /// strings for home page
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
        'homeTabBarText1': 'All',
        'homeTabBarText2': 'completed',
        'homeTabBarText3': 'In Delivery',
        'homeTabBarText4': 'Pending',

        /// package details screen
        'packageDetailsAppBarTitle': 'Package Details',


      },

      /// spanish translation
      'es': {
        // strings for home page
        'homeAppBarText': 'Atinuke Manuels',
        'homeAppBarSubText': 'Banana Island',
        "yourBalance": "Tu saldo",
        "topUpBtn": "Recargar",
        'balanceWholeNumber': '\$9,532.',
        'balanceDecimal': '00',
        'newTrackBtnText': 'Nueva Pista',
        'orderUsBtnText': 'Pídanos',
        'currentTrackingText': 'Seguimiento Actual',
        'seeAllText': 'Ver Todo',
        'searchText': 'Buscar',
        'idNumberText': "Número de ID",
        'idNumber': 'F - ZR678W45',
        'locationText': 'ojuelegba',
        'locationSubText': 'Barracks',
        'homeTabBarText1': 'Todo',
        'homeTabBarText2': 'Completado',
        'homeTabBarText3': 'En entrega',
        'homeTabBarText4': 'Pendiente',

        /// package details screen
        'packageDetailsAppBarTitle': "Detalles del paquete",


      },
      /// french translation
      'fr': {
        // strings for home page
        'homeAppBarText': 'Atinuke Manuels',
        'homeAppBarSubText': 'Banana Island',
        "yourBalance": "Votre solde",
        "topUpBtn": "Recharger",
        'balanceWholeNumber': '\$9,532.',
        'balanceDecimal': '00',
        'newTrackBtnText': 'Nouvelle Piste',
        'orderUsBtnText': 'Commandez, chez Nous',
        'currentTrackingText': 'Suivi Actuel',
        'seeAllText': 'Voir Tout',
        'searchText': 'Rechercher',
        'idNumberText': "Numéro d'ID",
        'idNumber': 'F - ZR678W45',
        'locationText': 'ojuelegba',
        'locationSubText': 'Barracks',
        'homeTabBarText1': 'Tous',
        'homeTabBarText2': 'Terminé',
        'homeTabBarText3': 'En livraison',
        'homeTabBarText4': 'En attente',


        /// package details screen
        'packageDetailsAppBarTitle': "Détails du colis",


      },
    };

    _localizedStrings = translations[locale.languageCode] ??
        translations['fr']!; // Default to English
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
  String get homeTabBarText1=> _localizedStrings['homeTabBarText1']!;
  String get homeTabBarText2=> _localizedStrings['homeTabBarText2']!;
  String get homeTabBarText3=> _localizedStrings['homeTabBarText3']!;
  String get homeTabBarText4=> _localizedStrings['homeTabBarText4']!;



  /// package details screen
  String get packageDetailsAppBarTitle=> _localizedStrings['packageDetailsAppBarTitle']!;


  static AppStrings of(BuildContext context) {
    return Localizations.of<AppStrings>(context, AppStrings)!;
  }

}