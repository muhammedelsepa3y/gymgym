import 'package:flutter/material.dart';
import 'package:gymgym/constants/AppColors.dart';

import '../../constants/AppTextStyle.dart';

Widget defaultButton({
  double width = double.infinity,
  bool isUpper = true,
  Color? color,
  Color? colorEdges,
  Color? textColor,
  required VoidCallback onTap,
  required String text,
  required double radius,
  double? size,
  TextStyle? textStyle,
}) =>
    Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: color != null
                  ? [color, color] // Use the provided color if available
                  : [
                      AppColors.pDarkColor,
                      AppColors.pRedAccentColor,
                    ])),
      width: width,
      child: MaterialButton(
        onPressed: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            isUpper ? text.toUpperCase() : text,
            style: textStyle ??
                AppTextStyle.bodyWhiteFontWith16
                    .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
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
