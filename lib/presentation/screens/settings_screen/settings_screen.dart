import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymgym/constants/AppColors.dart';
import 'package:gymgym/presentation/screens/favourite_screen/favourite_screen.dart';
import 'package:gymgym/presentation/screens/profile_screen/profile_screen.dart';
import 'package:gymgym/presentation/widgets/intro_texts.dart';
import 'package:gymgym/presentation/widgets/settings_componant.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.pDarkColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BuildIntroTexts(
                headerMessage: 'أهلا بك user في جيم جيم!',
                subMessage:
                'إستمتع معنا بأفضل خدمات اللياقة البدنية',
              ),
              const SizedBox(height: 20,),
              SettingComponent(title: "الحساب",prefixIcon: Icons.arrow_forward_ios,suffixIcon: Icons.person,onTap: (){Navigator.pushNamed(context, ProfileScreen.id);},),
              const SizedBox(height: 20,),

              SettingComponent(title: "المفضلة",prefixIcon: Icons.arrow_forward_ios,suffixIcon: Icons.favorite_border_outlined,onTap: (){Navigator.pushNamed(context, FavouriteScreen.id);},),
              const SizedBox(height: 20,),

              SettingComponent(title: "الدعم الفني",prefixIcon: Icons.arrow_forward_ios,suffixIcon: Icons.call,),
              const SizedBox(height: 20,),

              SettingComponent(title: "الإعدادات",prefixIcon: Icons.arrow_forward_ios,suffixIcon: Icons.settings_outlined,),
              const SizedBox(height: 20,),

              SettingComponent(title: "تقييم التطبيق",prefixIcon: Icons.arrow_forward_ios,suffixIcon: Icons.star_outline_rounded,),

            ],
          ),
        ),
      ),
    );
  }
}
