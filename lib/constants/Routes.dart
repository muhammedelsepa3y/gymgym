import 'package:flutter/material.dart';
import 'package:gymgym/presentation/screens/favourite_screen/favourite_screen.dart';
import 'package:gymgym/presentation/screens/forget_password/forget_password.dart';
import 'package:gymgym/presentation/screens/gym_details_screen/details_screen.dart';
import 'package:gymgym/presentation/screens/home_screen/behind_you_screen.dart';
import 'package:gymgym/presentation/screens/home_screen/home_screen.dart';

import 'package:gymgym/presentation/screens/search_screen/best_offer.dart';

import 'package:gymgym/presentation/screens/login_screen/login_screen.dart';
import 'package:gymgym/presentation/screens/phone_confirmation/phone_enter_confirm.dart';
import 'package:gymgym/presentation/screens/register_screen/register_screen.dart';
import 'package:gymgym/presentation/screens/settings_screen/app_settings_Screen.dart';
import 'package:gymgym/presentation/screens/splash_screen/splash_screen.dart';
import 'package:gymgym/presentation/screens/technical_support_screen/technical_support_screen.dart';
import 'package:gymgym/presentation/screens/welcome_screens/welcome_after_auth_screen.dart';
import 'package:gymgym/presentation/screens/welcome_screens/welcome_before_auth_screen.dart';

import 'package:gymgym/presentation/screens/home_screen/last_visit_screen.dart';

import '../presentation/screens/home_layout/home_layout.dart';
import '../presentation/screens/phone_confirmation/phone_otp_confirm.dart';
import '../presentation/screens/profile_screen/profile_edit_screen.dart';

import 'package:gymgym/presentation/screens/payment_screens/confirm_payment/credit_payment.dart';
import 'package:gymgym/presentation/screens/payment_screens/confirm_payment/success_pay_screen.dart';
import 'package:gymgym/presentation/screens/payment_screens/confirm_payment/wallet_payment.dart';
import 'package:gymgym/presentation/widgets/subtype_screen.dart';
import '../presentation/screens/payment_screens/pay_way_screen.dart';

import '../presentation/screens/profile_screen/profile_screen.dart';
import '../presentation/screens/technical_support_screen/anim_after_sending.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> appRoutes = {
    HomeLayout.id: (context) => HomeLayout(),
    HomeScreen.id: (context) => const HomeScreen(),
    ProfileScreen.id: (context) => ProfileScreen(),
    LastVisitScreen.id: (context) => const LastVisitScreen(),
    BehindYouScreen.id: (context) => const BehindYouScreen(),
    DetailScreen.id: (context) => DetailScreen(),
    WelcomeStrangerScreen.id: (context) => WelcomeStrangerScreen(),
    SplashScreen.id: (context) => SplashScreen(),
    LoginScreen.id: (context) => LoginScreen(),
    RegisterScreen.id: (context) => RegisterScreen(),
    ForgetPassword.id: (context) => ForgetPassword(),
    WelcomeUserScreen.id: (context) => WelcomeUserScreen(),
    PhoneEnterScreen.id: (context) => PhoneEnterScreen(),
    PhoneOTPScreen.id: (context) => PhoneOTPScreen(),
    ProfileEditScreen.id: (context) => ProfileEditScreen(),
    FavouriteScreen.id: (context) => FavouriteScreen(),
    BestOffer.id: (context) => BestOffer(),
    SubtypeScreen.id: (context) => const SubtypeScreen(),
    PayWayScreen.id: (context) => PayWayScreen(),
    CreditPaymentScreen.id: (context) => CreditPaymentScreen(),
    WalletPaymentScreen.id: (context) => WalletPaymentScreen(),
    SuccessPaymentScreen.id: (context) => SuccessPaymentScreen(),
    AppSettingsScreen.id: (context) => const AppSettingsScreen(),
    TechnicalSupport.id: (context) => const TechnicalSupport(),
    AnimationAfterSending.id: (context) => const AnimationAfterSending(),

  };
}
