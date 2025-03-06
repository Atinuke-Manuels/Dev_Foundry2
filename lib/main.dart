import 'package:dev_foundry_task/constants/constants.dart';
import 'package:dev_foundry_task/ui_components/screens/bottom_nav.dart';
import 'package:flutter/material.dart';

import 'constants/strings.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Task',
      theme: ThemeData(
        scaffoldBackgroundColor: scaffoldBackgroundColor
      ),
      /// Use the app default locale
      supportedLocales: const [
        // Locale('en'),
        Locale('es'),
        Locale('fr'),
      ],
      localizationsDelegates: [
        StringsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: const BottomNavScreen(),
    );
  }
}



class StringsDelegate extends LocalizationsDelegate<AppStrings> {
  @override
  bool isSupported(Locale locale) =>
      ['en', 'es', 'fr'].contains(locale.languageCode);

  @override
  Future<AppStrings> load(Locale locale) async {
    if (!isSupported(locale)) {
      locale = const Locale('fr'); // Default to English
    }
    await AppStrings.load(locale);
    return AppStrings();
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppStrings> old) => false;
}