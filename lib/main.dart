
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'constants/Routes.dart';
import 'constants/size_config.dart';
import 'core/LoadSVGIcons.dart';

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
        // BlocProvider<ProductCubit>(
        //   create: (context) => ProductCubit(ProductsLogic()),
        // ),


      ],
      child: MaterialApp(
        navigatorKey: NavigationService.navigatorKey, // GlobalKey()
        debugShowCheckedModeBanner: false,
        routes: AppRoutes.appRoutes,
        initialRoute: SplashScreen.id,
      ),
    );
  }
}
