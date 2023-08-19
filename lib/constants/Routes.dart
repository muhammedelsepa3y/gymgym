import 'package:flutter/material.dart';
import 'package:gymgym/presentation/screens/gym_details_screen/details_screen.dart';
import 'package:gymgym/presentation/screens/home_screen/home_screen.dart';

import '../presentation/screens/splash_screen.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> appRoutes = {
    SplashScreen.id: (context) => SplashScreen(),
    HomeScreen.id: (context) => const HomeScreen(),
    DetailScreen.id: (context) => DetailScreen(),
  };
}
