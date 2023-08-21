import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'AppColors.dart';
import 'size_config.dart';

class AppTextStyle {
  static TextStyle get appBarFont => GoogleFonts.cairo(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.bold,
      fontSize: 16 * SizeConfig.textRatio,
  );

  static TextStyle get bodyGreyFont => GoogleFonts.cairo(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 12 * SizeConfig.textRatio,
    color: AppColors.bodyGrey,
  );
  static TextStyle get bodyWhiteFont => GoogleFonts.cairo(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 12 * SizeConfig.textRatio,
    color: AppColors.tWhiteColor,
  );
  static TextStyle get bodyWhiteFontWith16 => GoogleFonts.cairo(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 16 * SizeConfig.textRatio,
    color: AppColors.tWhiteColor,
  );
  static TextStyle get bodyWhiteFontWith14 => GoogleFonts.cairo(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 14 * SizeConfig.textRatio,
    color: AppColors.tWhiteColor,
  );
}
