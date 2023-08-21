import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gymgym/constants/AppAssets.dart';
import 'package:gymgym/constants/AppColors.dart';
import 'package:gymgym/constants/AppTextStyle.dart';
import 'package:gymgym/constants/size_config.dart';
import 'package:gymgym/presentation/screens/home_screen/behind_you_screen.dart';
import 'package:gymgym/presentation/screens/home_screen/last_visit_screen.dart';

import '../../widgets/home_componant.dart';

class HomeScreen extends StatelessWidget {
  static String id = "/";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                  child: Text(
                    "البحث عن صالات رياضية",
                    style: AppTextStyle.appBarFont,
                  ),
                ),
                Container(
                  width: 339 * SizeConfig.horizontalBlock,
                  height: 336 * SizeConfig.verticalBlock,
                  decoration: const BoxDecoration(color: AppColors.pSoftColor),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AppAssets.location,
                        width: SizeConfig.horizontalBlock * 24,
                        height: SizeConfig.verticalBlock * 24,
                      ),
                      Text(
                        "سيتم عرض مواقع صالات رياضية قريبة هنا!",
                        style: AppTextStyle.bodyWhiteFontWith16,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                  child: Text(
                    "مجاور لك",
                    style: AppTextStyle.appBarFont,
                  ),
                ),
                Row(
                  children: [
                    const DefaultAppContainer(),
                    SizedBox(
                      width: 16 * SizeConfig.horizontalBlock,
                    ),
                    const DefaultAppContainer(),
                  ],
                ),
                 MoreHomeButton(routeName: BehindYouScreen.id),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                  child: Text(
                    "الزيارات الأخيرة",
                    style: AppTextStyle.appBarFont,
                  ),
                ),
                Row(
                  children: [
                    const DefaultAppContainer(),
                    SizedBox(
                      width: 16 * SizeConfig.horizontalBlock,
                    ),
                    const DefaultAppContainer(),
                  ],
                ),
                 MoreHomeButton(routeName: LastVisitScreen.id),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
