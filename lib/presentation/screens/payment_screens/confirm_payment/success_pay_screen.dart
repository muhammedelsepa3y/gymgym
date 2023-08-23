import 'package:flutter/material.dart';
import 'package:gymgym/constants/AppAssets.dart';
import 'package:gymgym/constants/AppColors.dart';
import 'package:gymgym/constants/AppTextStyle.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:gymgym/presentation/widgets/component.dart';

class SuccessPaymentScreen extends StatelessWidget {
  const SuccessPaymentScreen({super.key});
  static String id = "SuccessPaymentScreen";
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(height * 0.04),
        child: Center(
          child: Padding(
            padding: EdgeInsets.only(top: height * 0.08),
            child: Column(children: [
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    'اخبار جيده',
                    textStyle: AppTextStyle.bodyGreyFont.copyWith(
                        color: AppColors.pRedAccentColor, fontSize: 16),
                  ),
                ],
                totalRepeatCount: 3,
                pause: const Duration(milliseconds: 10000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    'تم تأكيد حجزك بنجاح',
                    textStyle: AppTextStyle.bodyGreyFont
                        .copyWith(color: AppColors.tWhiteColor, fontSize: 22),
                    speed: const Duration(milliseconds: 80),
                  ),
                ],
                totalRepeatCount: 1,
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
              ),
              SizedBox(
                height: height * 0.1,
              ),
              Image.asset(AppAssets.approve),
              SizedBox(
                height: height * 0.05,
              ),
              SizedBox(
                height: height / 15,
                width: width * 0.85,
                child: defaultButton(
                  size: width * .05,
                  onTap: () {
                    Navigator.popAndPushNamed(context, 'HomeLayOut');
                  },
                  text: 'العودة للصفحه الرئيسيه',
                  radius: 10,
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
