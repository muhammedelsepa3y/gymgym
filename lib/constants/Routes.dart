

import 'package:flutter/material.dart';

import '../presentation/screens/splash_screen.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> appRoutes = {
    SplashScreen.id: (context) =>  SplashScreen(),




  };
}
