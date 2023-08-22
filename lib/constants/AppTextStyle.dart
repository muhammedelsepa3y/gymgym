import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'AppColors.dart';
import 'size_config.dart';

class AppTextStyle {
  static TextStyle get inputFieldTextStyle => GoogleFonts.cairo(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontSize: 16 * SizeConfig.textRatio,
    color: Color(0xffDADADA),
  );

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
  static TextStyle get bodyGreyFontWith14 => GoogleFonts.cairo(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 14 * SizeConfig.textRatio,
    color: AppColors.bodyGrey,
  );
  static TextStyle get bodyWhiteFontWith12 => GoogleFonts.cairo(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 12 * SizeConfig.textRatio,
    color: AppColors.tWhiteColor,
  );
  static TextStyle get bodyWhiteFontWith14 => GoogleFonts.cairo(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 14 * SizeConfig.textRatio,
    color: AppColors.tWhiteColor,
  );
  static TextStyle get bodyWhiteFontWith14Bold => GoogleFonts.cairo(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontSize: 14 * SizeConfig.textRatio,
    color: AppColors.tWhiteColor,
  );
  static TextStyle get bodyWhiteFontWith16 => GoogleFonts.cairo(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 16 * SizeConfig.textRatio,
    color: AppColors.tWhiteColor,
  );
  static TextStyle get bodyWhiteFontWith16Bold => GoogleFonts.cairo(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.bold,
    fontSize: 16 * SizeConfig.textRatio,
    color: AppColors.tWhiteColor,
  );
  static TextStyle get buttonWhiteFontWith20=> GoogleFonts.cairo(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 20 * SizeConfig.textRatio,
    color: AppColors.tWhiteColor,
  );
  static TextStyle get appName => GoogleFonts.cairo(
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.normal,
    fontSize: 24 * SizeConfig.textRatio,
    color: AppColors.tWhiteColor,
  );

}
