import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorsLib {
  static Color primary = const Color(0xFFFF6124);
  static Color primaryDarker = const Color(0xFFCE5728);
  static Color darkPrimary = const Color(0xFF1D2027);
  static Color blueGreyPrimary = const Color(0xFF819399);
  static Color blueGreySecondary = const Color(0xFFADC4CB);
  static Color lightGrey = const Color(0xFFF1F5F9);
}

class AppTheme {
  static TextTheme lightTextTheme = TextTheme(
    headline1: GoogleFonts.manrope(
      fontSize: 32.0,
      fontWeight: FontWeight.w800,
      color: Colors.black,
    ),
    headline2: GoogleFonts.manrope(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    headline3: GoogleFonts.inter(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headline6: GoogleFonts.inter(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    bodyText1: GoogleFonts.inter(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    headline1: GoogleFonts.manrope(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    headline2: GoogleFonts.manrope(
      fontSize: 21.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    headline3: GoogleFonts.inter(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headline6: GoogleFonts.inter(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    bodyText1: GoogleFonts.inter(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
  );

  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
        foregroundColor: ColorsLib.darkPrimary,
        backgroundColor: Colors.white,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: ColorsLib.primary,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: ColorsLib.primary,
      ),
      textTheme: lightTextTheme,
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: ColorsLib.darkPrimary,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: ColorsLib.primary,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: ColorsLib.primary,
      ),
      textTheme: darkTextTheme,
    );
  }
}
