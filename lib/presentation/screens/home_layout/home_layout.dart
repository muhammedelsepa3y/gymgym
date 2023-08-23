import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gymgym/business_logic/bottom_nav_bar_cubit/bottom_nav_bar_cubit.dart';
import 'package:gymgym/business_logic/bottom_nav_bar_cubit/bottom_nav_bar_states.dart';
import 'package:gymgym/constants/AppColors.dart';
import 'package:gymgym/presentation/screens/home_screen/home_screen.dart';

class HomeLayout extends StatefulWidget {
  static String id = "HomeLayOut";

  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  Widget? child;

  @override
  void initState() {
    // TODO: implement initState
    child = const HomeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NavBarCubit, NavBarStates>(
      listener: (context, state) {},
      builder: (context, state) {
        GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
        var cubit = NavBarCubit.get(context);

        return Scaffold(
            backgroundColor: AppColors.pDarkColor,
            bottomNavigationBar: CurvedNavigationBar(
              key: _bottomNavigationKey,
              index: cubit.currentIndex,
              height: 60,
              items: <Widget>[
                Icon(
                  Icons.home_outlined,
                  size: 30,
                  color: cubit.currentIndex != 0
                      ? AppColors.pDarkColor
                      : Colors.white,
                ),
                Icon(Icons.search,
                    size: 30,
                    color: cubit.currentIndex != 1
                        ? AppColors.pDarkColor
                        : Colors.white),
                Icon(Icons.signal_cellular_alt_outlined,
                    size: 30,
                    color: (cubit.currentIndex != 2)
                        ? AppColors.pDarkColor
                        : Colors.white),
                Icon(Icons.person_2_outlined,
                    size: 30,
                    color: (cubit.currentIndex != 3)
                        ? AppColors.pDarkColor
                        : Colors.white),
              ],
              color: AppColors.pRedAccentColor,
              buttonBackgroundColor: AppColors.pRedAccentColor,
              backgroundColor: AppColors.blackColor,
              animationCurve: Curves.bounceOut,
              onTap: (index) {
                setState(() {
                  cubit.currentIndex = index;
                });
              },
              letIndexChange: (index) => true,
            ),
            body: Scaffold(
              body: cubit.screenName[cubit.currentIndex],
            ));
      },
    );
  }
}
