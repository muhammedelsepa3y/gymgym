import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gymgym/business_logic/bottom_nav_bar_cubit/bottom_nav_bar_states.dart';
import 'package:gymgym/presentation/screens/home_screen/home_screen.dart';
import 'package:gymgym/presentation/screens/plans_screen/plans_screens.dart';
import 'package:gymgym/presentation/screens/search_screen/search_screen.dart';
import 'package:gymgym/presentation/screens/settings_screen/settings_screen.dart';

class NavBarCubit extends Cubit<NavBarStates>{
  NavBarCubit() : super(InitialState());

  static NavBarCubit get(context) => BlocProvider.of<NavBarCubit>(context);

  int currentIndex = 0;
  List<Widget> screenName = [
    const HomeScreen(),
    const SearchScreen(),
    const PlansScreen(),
    const SettingsScreen(),
  ];

  void setIndex(int value) {
    currentIndex = value;
    emit(SetCurrentIndexStates());
  }

}