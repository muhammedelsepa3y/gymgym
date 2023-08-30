
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gymgym/constants/AppAssets.dart';
import 'package:gymgym/constants/AppTextStyle.dart';
import 'package:gymgym/constants/size_config.dart';
import 'package:page_transition/page_transition.dart';

import '../../../constants/AppColors.dart';
import '../../../constants/Enums.dart';
import '../../widgets/component.dart';
import '../../widgets/slide_fade_transition/slide_fade_transition.dart';
import '../home_layout/home_layout.dart';

class AnimationAfterSending extends StatefulWidget {
  const AnimationAfterSending({super.key});

  static const String id = "AnimationAfterSending";

  @override
  State<AnimationAfterSending> createState() => _AnimationAfterSendingScreenState();
}

class _AnimationAfterSendingScreenState extends State<AnimationAfterSending> with TickerProviderStateMixin {

  late AnimationController _leftToCenterController;
  late Animation<Offset> _leftToCenterAnimation;

  @override
  void initState() {
    super.initState();

    _leftToCenterController = AnimationController(duration: Duration(seconds: 1), vsync: this);
    _leftToCenterAnimation = Tween<Offset>(
        begin: Offset(-1,0),
        end: Offset(0,0)
    ).animate(_leftToCenterController)..addListener(() {
      setState(() {

      });
    });


    _leftToCenterController.forward().then((_) {

    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SlideFadeTransition(
                  animationDuration: Duration(milliseconds: 2000),
                  delayStart: Duration(milliseconds: 0),
                  offset: 2.5,

                  direction: Direction.horizontal,
                  child: Text(
                    'أخبار جيده!',
                    style: AppTextStyle.bodyWhiteFontWith14Bold.copyWith(
                      color: AppColors.red,
                    ),
                  ),
                  curve: Curves.linearToEaseOut,
                ),
                SizedBox(height: 15*SizeConfig.verticalBlock,),
                SlideFadeTransition(
                  animationDuration: Duration(milliseconds: 1500),
                  delayStart: Duration(milliseconds: 500),
                  offset: 2.5,
                  direction: Direction.horizontal,
                  child: Text(
                    "تتم مراجعة مشكلتك وسيتم التواصل معك",
                    style: AppTextStyle.bodyWhiteFontWith14,
                  ),
                  curve: Curves.elasticOut,
                ),
              ],
            ),

            SlideTransition(

              position: _leftToCenterAnimation,
              child: SvgPicture.asset(
                AppAssets.techIcon,
                height: SizeConfig.verticalBlock * 432,
                width: SizeConfig.horizontalBlock * 332,
              ),
            ),
            SlideFadeTransition(
              animationDuration: Duration(milliseconds: 1000),
              delayStart: Duration(milliseconds: 500),
              offset: 2.5,
              direction: Direction.horizontal,
              child: Padding(
                padding:   EdgeInsets.symmetric(horizontal: 18 * SizeConfig.horizontalBlock),

                child: defaultButton(
                  onTap: (){
                    Navigator.pushAndRemoveUntil(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          alignment: Alignment.center,
                          duration: const Duration(milliseconds: 2000),
                          child: HomeLayout(),
                        ),
                            (route) => false
                    );
                  },
                  text:'العودة إلى الصفحة الرئيسية',
                  radius: 10* SizeConfig.horizontalBlock,
                  textStyle: AppTextStyle.buttonWhiteFontWith20,
                ),
              ),
              curve: Curves.linearToEaseOut,
            ),

          ],
        ),
      ),
    );
  }

}



