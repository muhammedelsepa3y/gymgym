import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gymgym/constants/AppAssets.dart';
import 'package:gymgym/presentation/screens/welcome_screens/welcome_before_auth_screen.dart';
import 'package:gymgym/presentation/widgets/component.dart';
import 'package:gymgym/presentation/widgets/shared/custom_appbar.dart';

import '../../../constants/size_config.dart';
import '../../widgets/custom_settings_component.dart';
import '../../widgets/settings_componant.dart';

class AppSettingsScreen extends StatelessWidget {
  const AppSettingsScreen({super.key});
  static String id="AppSettingsScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "الإعدادات",),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.all(15*SizeConfig.horizontalBlock),
          child: Column(
            children: [

              CustomSettingComponent(
                prefixIcon: AppAssets.politicsIcon,
                suffixIcon:AppAssets.arrowButtonIcon, title: "سياسة الشروط والاستخدام",
              ),
              SizedBox(height: 15*SizeConfig.verticalBlock,),
              CustomSettingComponent(
                prefixIcon: AppAssets.logoutIcon,
                 title: "تسجيل خروج",
                onTap: (){
                  Navigator.of(context).pushNamedAndRemoveUntil(WelcomeStrangerScreen.id, (route) => false);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
