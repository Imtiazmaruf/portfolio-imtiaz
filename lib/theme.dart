import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const Color bgColor = Color(0xFF0a192f);
  static const Color textPrimary = Color(0xFFccd6f6);
  static const Color textSecondary = Color(0xFF8892b0);
  static const Color accentColor = Color(0xFF64ffda);
  static const Color glassBg = Color(0xB3020c1b); // 70% opacity
  static const Color glassBorder = Color(0x3364ffda); // 20% opacity

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: bgColor,
      colorScheme: const ColorScheme.dark(
        primary: accentColor,
        surface: bgColor,
        onSurface: textPrimary,
      ),
      textTheme: GoogleFonts.outfitTextTheme(ThemeData.dark().textTheme).copyWith(
        displayLarge: GoogleFonts.outfit(color: textPrimary, fontWeight: FontWeight.bold),
        displayMedium: GoogleFonts.outfit(color: textSecondary, fontWeight: FontWeight.bold),
        bodyLarge: GoogleFonts.outfit(color: textPrimary),
        bodyMedium: GoogleFonts.outfit(color: textSecondary),
      ),
    );
  }
}
