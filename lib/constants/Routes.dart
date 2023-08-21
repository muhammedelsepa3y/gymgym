import 'package:flutter/material.dart';
import 'package:gymgym/presentation/screens/gym_details_screen/details_screen.dart';
import 'package:gymgym/presentation/screens/home_screen/behind_you_screen.dart';
import 'package:gymgym/presentation/screens/home_screen/home_screen.dart';
import 'package:gymgym/presentation/screens/home_screen/last_visit_screen.dart';

import '../presentation/screens/home_layout/home_layout.dart';
import '../presentation/screens/profile_screen/profile_screen.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> appRoutes = {

    HomeLayout.id: (context) => const HomeLayout(),
    HomeScreen.id: (context) => const HomeScreen(),
    ProfileScreen.id:(context)=>ProfileScreen(),
    LastVisitScreen.id:(context)=>const LastVisitScreen(),
    BehindYouScreen.id:(context)=>const BehindYouScreen(),

    DetailScreen.id: (context) => DetailScreen(),

  };
}
