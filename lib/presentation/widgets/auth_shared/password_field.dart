import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/AppAssets.dart';
import 'input_field.dart';

class PasswordField extends StatefulWidget {

  TextEditingController passwordController;

  String text;

  PasswordField({
    Key? key,
    required this.text,
    required this.passwordController,
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isShown = false;

  @override
  Widget build(BuildContext context) {
    return InputField(
        controller: widget.passwordController,
        hintText: widget.text,

        prefixIcon: AppAssets.lockIcon,
        validator: (value) {
          if (value!.isEmpty) {
            return 'من فضلك أدخل كلمة السر';
          }
          return null;
        },
        suffix: IconButton(
          onPressed: () {
            setState(() {
              isShown = !isShown;
            });
          },
          icon: isShown
              ? Icon(
                  Icons.visibility_off,
                  color: Colors.grey,
                ):Icon(
                  Icons.visibility,
                  color: Colors.grey,
                ),
        ),
        obscureText: isShown,
        );
  }
}
