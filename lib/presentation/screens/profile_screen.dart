import 'package:flutter/material.dart';

import '../widgets/custom_appbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static String id = "profileScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: "الحساب",

      ),
    );
  }
}
