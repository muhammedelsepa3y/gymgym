

import 'package:flutter/material.dart';

import '../../constants/AppColors.dart';
import '../../constants/size_config.dart';

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
      backgroundColor: AppColors.pDarkColor,
      body: Center(
        child:ElevatedButton(
          onPressed: (){},
          child: Text("hello"),
        )
        //child: SplashScreenText(),
      ),
    );
  }
}
