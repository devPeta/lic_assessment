import 'package:flutter/material.dart';

class LicTextTheme{
  LicTextTheme._();

  static TextTheme lightTextTheme = TextTheme(

    headlineMedium: TextStyle().copyWith( fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
    headlineLarge: TextStyle().copyWith( fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black87),
    headlineSmall: TextStyle().copyWith(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),

    bodyMedium: TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w300, color: Colors.black87),
    bodySmall: TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.w300, color: Colors.black87),
    bodyLarge: TextStyle().copyWith(fontSize: 24, fontWeight: FontWeight.w300, color: Colors.black87),

    labelSmall: TextStyle().copyWith(fontSize: 12, fontWeight: FontWeight.w300, color: Colors.black87),
    
  );


  static TextTheme darkTextTheme = TextTheme(

    headlineMedium: TextStyle().copyWith( fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
    headlineLarge: TextStyle().copyWith( fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),


    bodyMedium: TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w300, color: Colors.white),
    bodySmall: TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.w300, color: Colors.white),
    bodyLarge: TextStyle().copyWith(fontSize: 24, fontWeight: FontWeight.w300, color: Colors.white),

    labelSmall: TextStyle().copyWith(fontSize: 12, fontWeight: FontWeight.w300, color: Colors.white),
  );
}