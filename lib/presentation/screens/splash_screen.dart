import 'package:flutter/material.dart';
import 'package:gymgym/presentation/screens/gym_details_screen/details_screen.dart';

import '../../constants/AppColors.dart';
import '../../constants/size_config.dart';
import 'home_screen/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static String id = "SplashScreen";

  // late final AuthenticationOrchestrator _authenticationOrchestrator =
  //     AuthenticationOrchestrator();

  // Future customInitial(BuildContext context) async {
  //   _authenticationOrchestrator.initialAuthForApp(
  //       menuCubit: MenuCubit.get(context),
  //       appLayoutCubit: AppLayoutCubit.get(context),
  //       prefs: await SharedPreferences.getInstance(),
  //       authorizationCubit: AuthorizationCubit.get(context));
  //
  // }

  @override
  Widget build(BuildContext context) {


    return Scaffold(

    //customInitial(context);
    // SizeConfig().init(context);
    // Future.delayed(const Duration(seconds: 3), () {
    //   // Navigator.pushNamedAndRemoveUntil(
    //   //     context, AppLayout.id, (route) => false);
    // });

      backgroundColor: AppColors.pDarkColor,
      body: Center(
          child: ElevatedButton(
        onPressed: () {},
        child: Text("hello"),
      )
          //child: SplashScreenText(),
          ),
    );
  }
}
