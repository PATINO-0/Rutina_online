// **********************************************************************************************
// app_theme.dart
// Define la estética limpia usando negro, rojo y blanco.
// **********************************************************************************************

import 'package:flutter/material.dart';

class AppTheme {
  // Paleta de colores central (negro, rojo, blanco)
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color red = Colors.red;

  // Estilo base de botones con rojo predominante y texto blanco
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
      scaffoldBackgroundColor: black, // Fondo negro para estética limpia
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
      // >>> Cambio clave: usar CardThemeData en lugar de CardTheme
      cardTheme: const CardThemeData(
        color: Colors.white,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        // Si tu SDK marca error por "margin", quita esta línea
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      textTheme: const TextTheme(
        headlineMedium: TextStyle(color: white, fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(color: white),
        bodyMedium: TextStyle(color: Colors.white70), // corrección: Colors.white70
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
    // Tema oscuro opcional (manteniendo la paleta)
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
