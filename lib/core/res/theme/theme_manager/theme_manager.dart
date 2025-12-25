import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager {
  static Color primaryColor = Color(0xffF3E9B5);
  static Color yellowBase = Color(0xffF5CB58);
  static Color orangeBase = Color(0xffE95322);
  static Color orange2 = Color(0xffFFDECF);
  static Color lightBrown = Color(0xff391713);
  static Color black2 = Color(0xff252525);
  static Color grey = Color(0xff676767);
  static Color yellow2 = Color(0xffF3E9B5);
  static Color white = Color(0xffF9f9f9);

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,

    scaffoldBackgroundColor: ThemeManager.primaryColor,
    useMaterial3: false,
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.leagueSpartan(
        color: ThemeManager.lightBrown,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
      headlineMedium: GoogleFonts.leagueSpartan(
        color: ThemeManager.lightBrown,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
      headlineSmall: GoogleFonts.leagueSpartan(
        color: ThemeManager.black2,
        fontSize: 14,
        fontWeight: FontWeight.w300,
      ),
      bodyLarge: GoogleFonts.leagueSpartan(
        color: ThemeManager.white,
        fontSize: 24,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: GoogleFonts.leagueSpartan(
        color: ThemeManager.orangeBase,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: GoogleFonts.leagueSpartan(
        color: ThemeManager.black2,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: GoogleFonts.leagueSpartan(
        color: ThemeManager.lightBrown,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: GoogleFonts.leagueSpartan(
        color: ThemeManager.orangeBase,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: GoogleFonts.leagueSpartan(
        color: ThemeManager.grey,
        fontSize: 12,
        fontWeight: FontWeight.w300,
      ),
      displayLarge: GoogleFonts.leagueSpartan(
        color: ThemeManager.white,
        fontSize: 30,
        fontWeight: FontWeight.w700,
      ),
      displayMedium: GoogleFonts.leagueSpartan(
        color: ThemeManager.white,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
      displaySmall: GoogleFonts.leagueSpartan(
        color: ThemeManager.yellow2,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      titleLarge: GoogleFonts.leagueSpartan(
        color: ThemeManager.white,
        fontSize: 33,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: GoogleFonts.leagueSpartan(
        color: ThemeManager.yellow2,
        fontSize: 24,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: GoogleFonts.leagueSpartan(
        color: ThemeManager.orangeBase,
        fontSize: 30,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
