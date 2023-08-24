import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymgym/constants/AppColors.dart';
import 'package:gymgym/constants/AppTextStyle.dart';

import '../../constants/AppAssets.dart';
import '../../constants/size_config.dart';

class CustomSettingComponent extends StatefulWidget {
  String title;
  String prefixIcon;
  String? suffixIcon;
  void Function()? onTap;

  CustomSettingComponent({required this.title,required this.prefixIcon, this.suffixIcon,this.onTap,super.key});

  @override
  State<CustomSettingComponent> createState() => _CustomSettingComponentState();
}

class _CustomSettingComponentState extends State<CustomSettingComponent> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery=MediaQuery.sizeOf(context);
    return  GestureDetector(
      onTap:widget.onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  AppColors.redDark,
                  AppColors.red,
                ]
            )
        ),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  widget.prefixIcon ,
                  height: 24 * SizeConfig.verticalBlock,
                  width: 24 * SizeConfig.horizontalBlock,
                ),

                SizedBox(
                  width: mediaQuery.width * .02,
                ),
                Text(
                  widget.title,
                  style: AppTextStyle.bodyWhiteFontWith14,
                ),
              ],
            ),
            widget.suffixIcon==null?Container():SvgPicture.asset(
              widget.suffixIcon! ,
              height: 21 * SizeConfig.verticalBlock,
              width: 12 * SizeConfig.horizontalBlock,
            )
          ],
        ),
      ),
    );
  }
}
