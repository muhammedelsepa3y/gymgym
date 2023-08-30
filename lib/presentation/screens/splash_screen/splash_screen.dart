import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gymgym/constants/size_config.dart';
import 'package:gymgym/presentation/screens/welcome_screens/welcome_before_auth_screen.dart';

import '../../../constants/AppTextStyle.dart';
import '../../../constants/Enums.dart';
import '../../widgets/slide_fade_transition/slide_fade_transition.dart';

class SplashScreen extends StatefulWidget {
  static String id = 'splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
 late AnimationController scaleController;
 late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();


    scaleController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 100))
          ..addStatusListener(
            (status) {
              if (status == AnimationStatus.completed) {
                Navigator.pushReplacement(
                  context,
                  AnimatingRoute(
                    route: WelcomeStrangerScreen(),
                  ),
                );

              }
            },
          );
    Future.delayed(Duration(seconds: 2), () {
      scaleController.forward();
    });
    scaleAnimation =
        Tween<double>(begin: 0.0, end: 10.0).animate(scaleController)..addListener(() {
          setState(() {

          });
        });
  }

  @override
  void dispose() {
    scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext c) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              child: AnimatedBuilder(
                animation: scaleAnimation,
                builder: (c, child) => Transform.scale(
                  scale: scaleAnimation.value,
                  child: Container(
                    decoration: BoxDecoration(

                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12*SizeConfig.verticalBlock,
            ),
            SlideFadeTransition(
              animationDuration: Duration(milliseconds: 1500),
              delayStart: Duration(milliseconds: 0),
              offset: 2.5,
              direction: Direction.horizontal,
              child: Text(
                'GymGym',
                style: AppTextStyle.appName.copyWith(
                  color: Colors.black
                ),
              ),
              curve: Curves.elasticOut,
            ),
          ],
        ),
      ),
    );
  }
}


class AnimatingRoute extends PageRouteBuilder {
  final Widget route;

  AnimatingRoute({required this.route})
      : super(
    transitionDuration: Duration(milliseconds: 0),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              route,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: route,
          ),
        );
}
