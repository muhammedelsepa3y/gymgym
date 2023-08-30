import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gymgym/constants/size_config.dart';
import 'package:gymgym/presentation/screens/login_screen/login_screen.dart';
import 'package:gymgym/presentation/widgets/shared/skip_row.dart';

import '../../../constants/AppAssets.dart';
import '../../../constants/AppTextStyle.dart';
import '../../widgets/auth_shared/top_logo_with_divider.dart';
import '../../widgets/component.dart';
import '../../widgets/social_login_button.dart';
import '../register_screen/register_screen.dart';

class WelcomeStrangerScreen extends StatelessWidget {
  const WelcomeStrangerScreen({super.key});

  static String id = 'welcome_stranger_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(
            right: 20 * SizeConfig.horizontalBlock,
            left: 20 * SizeConfig.horizontalBlock,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Expanded(
                  child: ListView(
                children: [
                  SizedBox(
                    height: 60 * SizeConfig.verticalBlock,
                  ),
                  TopLogoWithDivider(),
                  SizedBox(
                    height: 38 * SizeConfig.verticalBlock,
                  ),
                  defaultButton(
                    onTap: () {
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                    text: 'تسجيل دخول',
                    radius: 10 * SizeConfig.horizontalBlock,
                    textStyle: AppTextStyle.buttonWhiteFontWith20,
                    heroTag:'loginButton',
                  ),
                  SizedBox(
                    height: 16 * SizeConfig.verticalBlock,
                  ),
                  defaultButton(
                    onTap: () {

                      Navigator.pushNamed(context, RegisterScreen.id);
                    },
                    text: 'إنضم الآن',
                    radius: 10 * SizeConfig.horizontalBlock,
                    textStyle: AppTextStyle.buttonWhiteFontWith20,
                      heroTag: "registerbutton"
                  ),
                  SizedBox(
                    height: 38 * SizeConfig.verticalBlock,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10 * SizeConfig.horizontalBlock),
                        child: Text(
                          'أو',
                          style: AppTextStyle.bodyWhiteFontWith14,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.white,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25 * SizeConfig.verticalBlock,
                  ),
                  Text(
                    'تستطيع الاستمرار عبر',
                    style: AppTextStyle.bodyWhiteFontWith12,
                  ),
                  SizedBox(
                    height: 24 * SizeConfig.verticalBlock,
                  ),
                  SocialLoginButton(
                    onTap: () {},
                    radius: 10 * SizeConfig.horizontalBlock,
                    assetName: AppAssets.facebookIcon,
                    text: 'Facebook',
                  ),
                  SizedBox(
                    height: 16 * SizeConfig.verticalBlock,
                  ),
                  SocialLoginButton(
                    onTap: () {},
                    radius: 10 * SizeConfig.horizontalBlock,
                    assetName: AppAssets.googleIcon,
                    text: 'Google',
                  ),
                ],
              )),
              SkipRow()
            ],
          ),
        ),
      ),
    );
  }
}
