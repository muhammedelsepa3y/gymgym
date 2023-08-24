
import 'package:flutter/material.dart';
import 'package:gymgym/constants/AppAssets.dart';
import 'package:gymgym/constants/AppTextStyle.dart';
import 'package:gymgym/constants/size_config.dart';
import 'package:page_transition/page_transition.dart';

import '../../../constants/AppColors.dart';
import '../../../constants/Enums.dart';
import '../../widgets/component.dart';
import '../../widgets/slide_fade_transition/slide_fade_transition.dart';
import '../home_layout/home_layout.dart';

class WelcomeUserScreen extends StatefulWidget {
  const WelcomeUserScreen({super.key});

  static const String id = "welcomeUserScreen";

  @override
  State<WelcomeUserScreen> createState() => _WelcomeUserScreenState();
}

class _WelcomeUserScreenState extends State<WelcomeUserScreen> with TickerProviderStateMixin {

  late AnimationController _leftToCenterController;
  late AnimationController _centerToBottomController;
  late AnimationController _bottomToCenterController;

  late Animation<Offset> _leftToCenterAnimation;
  late Animation<Offset> _centerToBottomAnimation;
  late Animation<Offset> _bottomToCenterAnimation;

  late Animation<Offset> _currentAnimation;

  @override
  void initState() {
    super.initState();

    _leftToCenterController = AnimationController(duration: Duration(seconds: 1), vsync: this);
    _centerToBottomController = AnimationController(duration: Duration(milliseconds: 600), vsync: this);
    _bottomToCenterController = AnimationController(duration: Duration(milliseconds: 600), vsync: this);

    _leftToCenterAnimation = Tween<Offset>(
        begin: Offset(-1,0),
        end: Offset(0,0)
    ).animate(_leftToCenterController)..addListener(() {
      setState(() {
        if(_leftToCenterController.isCompleted){
          _currentAnimation = _centerToBottomAnimation;
        }
      });
    });
    _currentAnimation = _leftToCenterAnimation;
    _centerToBottomAnimation = Tween<Offset>(
        begin: Offset(0,0),
        end: Offset(0,0.7)
    ).animate(_centerToBottomController)..addListener(() {
      setState(() {
        if(_centerToBottomController.isCompleted){
          _currentAnimation = _bottomToCenterAnimation;
        }
      });
    });

    _bottomToCenterAnimation = Tween<Offset>(
        begin: Offset(0,1),
        end: Offset(0,0)
    ).animate(_bottomToCenterController)..addListener(() {
      setState(() {
        if(_bottomToCenterController.isCompleted){
          _currentAnimation = _leftToCenterAnimation;
        }
      });
    });

    _leftToCenterController.forward().then((_) {
      _centerToBottomController.forward().then((_) {
        _bottomToCenterController.forward();
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SlideFadeTransition(
                  animationDuration: Duration(milliseconds: 1500),
                  delayStart: Duration(milliseconds: 500),
                  offset: 2.5,
                  direction: Direction.horizontal,
                  child: Text(
                    'مرحبا بك في ',
                    style: AppTextStyle.appName,
                  ),
                  curve: Curves.elasticOut,
                ),
                SlideFadeTransition(
                  animationDuration: Duration(milliseconds: 2000),
                  delayStart: Duration(milliseconds: 500),
                  offset: 2.5,

                  direction: Direction.horizontal,
                  child: Text(
                    ' جيم جيم!',
                    style: AppTextStyle.appName.copyWith(
                      color: AppColors.red,
                    ),
                  ),
                  curve: Curves.linearToEaseOut,
                ),
              ],
            ),
            SlideTransition(

              position: _currentAnimation,
              child: Image.asset(AppAssets.welcomeImage),
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
                  text:'إستمر أنت شخص مميز',
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



