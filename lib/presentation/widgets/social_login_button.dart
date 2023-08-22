import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/AppTextStyle.dart';
import '../../constants/size_config.dart';

class SocialLoginButton extends StatelessWidget {

  final VoidCallback onTap;
  final double radius;
  final double? width;
  final String assetName;
  final String text;

  SocialLoginButton({

    required this.onTap,
    required this.radius,
    required this.assetName,
    this.width,
    required this.text,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
      ),
      width: width,
      child: MaterialButton(
        color: Colors.white,
        onPressed: onTap,
        child: Padding(
          padding:  EdgeInsets.symmetric(
            vertical: 10* SizeConfig.verticalBlock,
            horizontal: 85* SizeConfig.horizontalBlock,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                assetName,
                height: SizeConfig.verticalBlock * 25,
                width: SizeConfig.horizontalBlock * 25,
              ),
              Expanded(
                child: SizedBox(
                ),
              ),
              Text(
                text,
                style: AppTextStyle.bodyWhiteFontWith14.copyWith(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
