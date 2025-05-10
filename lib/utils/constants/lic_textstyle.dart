import 'package:flutter/material.dart';
import 'package:lic_assessment/utils/constants/lic_color.dart' show LicAppColor;

class LicTextStyles {

  static final TextStyle textHeaderMd = TextStyle(
      fontSize: 28,
      color: Color(0xFFffffff).withOpacity(0.6),
      height: 1.8,
      fontWeight: FontWeight.w500
  );
  
  static final TextStyle textBodyMd = TextStyle(
        fontSize: 16,
        color: Color(0xFFffffff),
        height: 1.8,
        fontWeight: FontWeight.w500
  );
  static final TextStyle textBodyLG = TextStyle(
      fontSize: 24,
      color: Color(0xFFffffff),
      height: 1.8,
      fontWeight: FontWeight.w300
  );

  static final TextStyle textGreen = TextStyle(
    color: LicAppColor.primary,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
}