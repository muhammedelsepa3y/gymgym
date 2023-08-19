

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gymgym/presentation/screens/profile_screen.dart';
import 'business_logic/app_localization/app_localization.dart';
import 'constants/AppColors.dart';


import 'package:gymgym/business_logic/bottom_nav_bar_cubit/bottom_nav_bar_cubit.dart';
import 'package:gymgym/presentation/screens/home_layout/home_layout.dart';


import 'constants/Routes.dart';
import 'constants/size_config.dart';
import 'core/LoadSVGIcons.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/NavigationService.dart';
import 'presentation/screens/splash_screen.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  CustomSVGLoad.LoadIcons();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  // SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  // sharedPreferences.setStringList('products', []);
  // sharedPreferences.setStringList('favourites', []);
  //
  runApp(GymGym());
}

class GymGym extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SizeConfig().init(context);
     
    return MultiBlocProvider(
        providers: [
          BlocProvider<NavBarCubit>(
            create: (context) => NavBarCubit(),
          ),
        ],
        child: return
      MaterialApp(
        navigatorKey: NavigationService.navigatorKey, // GlobalKey()
        debugShowCheckedModeBanner: false,
        routes: AppRoutes.appRoutes,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          locale: Locale('ar', ''),
          supportedLocales: [
            Locale('ar', ''),
          ],
        initialRoute: ProfileScreen.id,
        theme:ThemeData(
          useMaterial3: true,

          colorScheme: ColorScheme.dark(
            background: AppColors.blackColor,
            primary: AppColors.tWhiteColor,
          ),

        )
      ));

  }
}
