import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gymgym/presentation/screens/gym_details_screen/details_screen.dart';
import 'package:gymgym/presentation/screens/payment_screens/confirm_payment/success_pay_screen.dart';
import 'package:gymgym/presentation/screens/payment_screens/confirm_payment/wallet_payment.dart';
import 'constants/AppColors.dart';
import 'package:gymgym/business_logic/bottom_nav_bar_cubit/bottom_nav_bar_cubit.dart';
import 'constants/Routes.dart';
import 'constants/size_config.dart';
import 'core/LoadSVGIcons.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: AppRoutes.appRoutes,
            localizationsDelegates: [
              GlobalCupertinoLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            locale: Locale('ar', ''),
            supportedLocales: [
              Locale('ar', ''),
            ],
            initialRoute: DetailScreen.id,
            theme: ThemeData(
              useMaterial3: true,
              colorScheme: ColorScheme.dark(
                background: AppColors.blackColor,
                primary: AppColors.tWhiteColor,
              ),
            )));
  }
}
