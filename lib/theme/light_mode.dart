import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
    colorScheme: ColorScheme.light(
        surface: Colors.brown.shade300,
        primary: Colors.brown.shade500,
        secondary: Colors.brown.shade200,
        tertiary: Color(0xFFD3D3D3),   // color for the grey text
        tertiaryFixed: Color(0xFFE5FBEB),
        inversePrimary: Colors.brown.shade900
    )
);