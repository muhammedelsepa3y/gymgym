import 'package:flutter/material.dart';

import '../../../constants/AppAssets.dart';
import 'input_field.dart';

class EmailField extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  String? title;
  EmailField({
    Key? key,
    required this.emailController,
    this.title,
  }) ;

  @override
  Widget build(BuildContext context) {
    return InputField(
      controller: emailController,
      hintText:title?? "الإيميل",
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return "الرجاء إدخال الإيميل";
        }else if (!RegExp(
            r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$")
            .hasMatch(value)) {
          return "الرجاء إدخال إيميل صحيح";
        }
        return null;
      },
      prefixIcon: AppAssets.mailIcon,

    );
  }
}
