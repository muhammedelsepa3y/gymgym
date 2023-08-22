import 'package:flutter/material.dart';

import '../../../constants/AppColors.dart';
import '../../../constants/AppTextStyle.dart';
import '../../../constants/size_config.dart';

class ProfileDetailComponent extends StatelessWidget {
  String title;
  String value;
  ProfileDetailComponent({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: AppTextStyle.bodyWhiteFontWith16,),
            SizedBox(
              height: 4 * SizeConfig.verticalBlock,
            ),
            Text(value,style: AppTextStyle.bodyGreyFontWith14,),
          ],
        ),
        SizedBox(
          height: 10 * SizeConfig.verticalBlock,
        ),
        Divider(
          color: AppColors.dividerColor,
          thickness: 1,
        ),
        SizedBox(
          height: 10 * SizeConfig.verticalBlock,
        ),
      ],
    );
  }
}
