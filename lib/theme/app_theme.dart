

import 'package:flutter/material.dart';

class AppTheme {
  
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color red = Colors.red;

  
  static ButtonStyle primaryRedButton = ElevatedButton.styleFrom(
    backgroundColor: red,
    foregroundColor: white,
    textStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
    minimumSize: const Size(double.infinity, 48),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
  );

  static ThemeData get light {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: black, 
      primaryColor: red,
      colorScheme: const ColorScheme.light(
        primary: red,
        secondary: red,
        surface: Colors.white,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.black,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: black,
        foregroundColor: white,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        centerTitle: true,
      ),
      
      cardTheme: const CardThemeData(
        color: Colors.white,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      textTheme: const TextTheme(
        headlineMedium: TextStyle(color: white, fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(color: white),
        bodyMedium: TextStyle(color: Colors.white70), 
        titleMedium: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(style: primaryRedButton),
      chipTheme: const ChipThemeData(
        backgroundColor: Colors.white,
        labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
      ),
    );
  }

  static ThemeData get dark {
    
    return ThemeData.dark().copyWith(
      primaryColor: red,
      colorScheme: const ColorScheme.dark(
        primary: red,
        secondary: red,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(style: primaryRedButton),
      appBarTheme: const AppBarTheme(
        backgroundColor: black,
        foregroundColor: white,
        elevation: 0,
        centerTitle: true,
      ),
    );
  }
}
