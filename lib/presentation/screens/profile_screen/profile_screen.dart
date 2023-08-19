import 'package:flutter/material.dart';
import 'package:gymgym/constants/AppColors.dart';

import '../../../constants/AppTextStyle.dart';
import '../../../constants/size_config.dart';
import '../../widgets/custom_appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static String id = "profileScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: "الحساب",
      ),
      body: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 18 * SizeConfig.horizontalBlock),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 16 * SizeConfig.verticalBlock,
            ),
            Text(
              "معلومات حول حسابك",
              style: AppTextStyle.appBarFont,
              textDirection: TextDirection.rtl,
            ),
            SizedBox(
              height: 5 * SizeConfig.verticalBlock,
            ),
            Text(
              "يمكنك إدارة حسابك في هذة الصفحة والتعديل عليها",
              style: AppTextStyle.bodyGreyFont,
            ),
            SizedBox(
              height: 35 * SizeConfig.verticalBlock,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 30 * SizeConfig.horizontalBlock,
                  backgroundColor: AppColors.pDarkColor,
                  child: CircleAvatar(
                    radius: 28 * SizeConfig.horizontalBlock,
                    backgroundImage: AssetImage("assets/images/pro.jpg"),
                  ),
                ),
                SizedBox(
                  width: 5 * SizeConfig.horizontalBlock,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "محمد عبد الرحمن",
                      style: AppTextStyle.appBarFont,
                    ),
                    SizedBox(
                      height: 1 * SizeConfig.verticalBlock,
                    ),
                    Text(
                      "متحمس للياقة البدنية",
                      style: AppTextStyle.bodyGreyFont,
                    ),
                  ],
                ),
                Expanded(child: SizedBox()),
                MaterialButton(
                  onPressed: (){},
                  minWidth: 10 * SizeConfig.horizontalBlock,
                  child: Row(
                    children: [
                      Text("تعديل",style: AppTextStyle.bodyWhiteFont,),
                      SizedBox(width: 3 * SizeConfig.horizontalBlock,),
                      Icon(Icons.arrow_forward_ios_outlined,
                        color: AppColors.tWhiteColor,
                        size: 11* SizeConfig.horizontalBlock,
                      )
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: AppColors.tWhiteColor)
                  ),
                )

              ],
            ),
            SizedBox(
              height: 15 * SizeConfig.verticalBlock,
            ),
            Divider(
              color: AppColors.dividerColor,
              thickness: 1,
            ),
            SizedBox(
              height: 15 * SizeConfig.verticalBlock,
            ),
            Column(
              children: [
                Text("الايميل",style: AppTextStyle.bodyWhiteFont,),
              ],
            )

          ],
        ),
      ),
    );
  }
}
