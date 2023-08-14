import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'size_config.dart';

class AppTextStyle {
  static TextStyle get fontFamily => GoogleFonts.cairo(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,



      fontSize: 16 * SizeConfig.textRatio,
      // color: AppColors.firstBlackColor,
      letterSpacing: 0.2 * SizeConfig.textRatio
  );
}
