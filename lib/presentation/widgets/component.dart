import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymgym/constants/AppColors.dart';

Widget defaultButton({
  double width = double.infinity,
  bool isUpper = true,
  Color? color,
  Color? colorEdges,
  Color? textColor,
  required VoidCallback onTap,
  required String text,
  required double radius,
  required double size,
}) =>
    Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        gradient:  LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: color != null
              ? [color, color] // Use the provided color if available
              : [
            AppColors.pDarkColor,
            AppColors.pRedAccentColor,
          ],
        ),
      ),
      width: width,
      child: MaterialButton(
        onPressed: onTap,
        child: Text(
          isUpper ? text.toUpperCase() : text,
          style: GoogleFonts.cairo(
            color: textColor,
            fontSize: size,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );



Widget divider({hight, thickness, endIndent, indent}) => Divider(
      color: AppColors.tWhiteColor,
      height: hight,
      thickness: thickness,
      endIndent: endIndent,
      indent: indent,
    );

