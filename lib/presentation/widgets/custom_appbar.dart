import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/AppAssets.dart';
import '../../../constants/AppColors.dart';
import '../../../constants/AppTextStyle.dart';
import '../../../constants/size_config.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  CustomAppbar({
    required this.title,
  });

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (15 * SizeConfig.verticalBlock));

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: SvgPicture.asset(
                AppAssets.backArrow,
                height: SizeConfig.verticalBlock * 35,
                width: SizeConfig.horizontalBlock * 36,
              ),
            ),
            Text(
              title,
              style: AppTextStyle.appBarFont,
              textDirection: TextDirection.rtl,
            ),
          ],
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: 18 * SizeConfig.horizontalBlock),
          child: Divider(
            color: AppColors.dividerColor,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
