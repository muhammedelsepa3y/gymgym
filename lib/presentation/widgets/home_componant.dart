import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gymgym/constants/AppAssets.dart';

import '../../constants/AppColors.dart';
import '../../constants/AppTextStyle.dart';
import '../../constants/size_config.dart';
import '../screens/gym_details_screen/details_screen.dart';

class MoreHomeButton extends StatelessWidget {
  String routeName;
   MoreHomeButton({super.key,
    required this.routeName,

  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
     onTap: (){
       Navigator.pushNamed(context, routeName);
     },

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "المزيد",
              style: AppTextStyle.bodyWhiteFontWith14,
            ),
            const SizedBox(
              width: 8,
            ),
            SvgPicture.asset(
              AppAssets.doubleArrowLeft,
              width: SizeConfig.horizontalBlock * 12,
              height: SizeConfig.verticalBlock * 12,
            ),
          ],
        ),
      ),
    );
  }
}

class DefaultAppContainer extends StatelessWidget {
  const DefaultAppContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
         Navigator.pushNamed(context, DetailScreen.id);
      },
      child: Column(

        children:[
          Container(
            height: 151 * SizeConfig.verticalBlock,
            width: 161 * SizeConfig.horizontalBlock,
            decoration: const BoxDecoration(
              color: AppColors.pSoftColor,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            ),
            child: Center(
                child: Text(
                  "صورة الجيم",
                  style: AppTextStyle.bodyWhiteFontWith14,
                )),
          ),

          Container(
            width: 161 * SizeConfig.horizontalBlock,
            height: 108 * SizeConfig.verticalBlock,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.plightRedColor,
                    AppColors.pDarkRedColor,
                  ]),
            ),
            child: Padding(
              padding:  EdgeInsets.all(7*SizeConfig.horizontalBlock),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Gym Name",
                      textDirection: TextDirection.ltr,
                      style: AppTextStyle.bodyWhiteFontWith14,
                    ),
                  ),
                  Text(
                    "مسافة : 0.5 كيلومتر",
                    style: AppTextStyle.bodyWhiteFontWith12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: SvgPicture.asset(
                          AppAssets.favourite,
                          height: SizeConfig.verticalBlock * 24,
                          width: SizeConfig.horizontalBlock * 24,
                        ),
                        iconSize: 24,
                        onPressed: () {},
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        AppAssets.star,
                        height: SizeConfig.verticalBlock * 14,
                        width: SizeConfig.horizontalBlock * 14.647,
                      ),
                      SizedBox(
                        width: 8 * SizeConfig.horizontalBlock,
                      ),
                      Text(
                        "4.5",
                        style: AppTextStyle.bodyWhiteFontWith14,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ]
      ),
    );
  }
}
