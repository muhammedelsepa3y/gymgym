import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gymgym/business_logic/bottom_nav_bar_cubit/bottom_nav_bar_cubit.dart';
import 'package:gymgym/presentation/screens/home_layout/home_layout.dart';

import 'constants/Routes.dart';
import 'constants/size_config.dart';
import 'core/LoadSVGIcons.dart';

import 'core/NavigationService.dart';
import 'presentation/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //CustomSVGLoad.LoadIcons();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  // SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  // sharedPreferences.setStringList('products', []);
  // sharedPreferences.setStringList('favourites', []);
  //
  runApp(GymGym());
}

class GymGym extends StatefulWidget {
  @override
  State<GymGym> createState() => _GymGymState();
}

class _GymGymState extends State<GymGym> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<NavBarCubit>(
            create: (context) => NavBarCubit(),
          ),
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            home: const HomeLayout(),
            theme: ThemeData(useMaterial3: true)));
  }
}
