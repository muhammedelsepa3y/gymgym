import 'package:flutter/material.dart';
import 'package:gymgym/presentation/screens/gym_details_screen/details_screen.dart';
import 'package:gymgym/presentation/screens/home_screen/home_screen.dart';
import 'package:gymgym/presentation/screens/payment_screens/confirm_payment/credit_payment.dart';
import 'package:gymgym/presentation/screens/payment_screens/confirm_payment/success_pay_screen.dart';
import 'package:gymgym/presentation/screens/payment_screens/confirm_payment/wallet_payment.dart';
import 'package:gymgym/presentation/widgets/subtype_screen.dart';
import '../presentation/screens/home_layout/home_layout.dart';
import '../presentation/screens/payment_screens/pay_way_screen.dart';
import '../presentation/screens/profile_screen/profile_screen.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> appRoutes = {
    HomeLayout.id: (context) => const HomeLayout(),
    HomeScreen.id: (context) => const HomeScreen(),
    ProfileScreen.id: (context) => ProfileScreen(),
    DetailScreen.id: (context) => DetailScreen(),
    SubtypeScreen.id: (context) => const SubtypeScreen(),
    PayWayScreen.id: (context) => PayWayScreen(),
    CreditPaymentScreen.id: (context) => CreditPaymentScreen(),
    WalletPaymentScreen.id: (context) => WalletPaymentScreen(),
    SuccessPaymentScreen.id: (context) => SuccessPaymentScreen(),
  };
}
