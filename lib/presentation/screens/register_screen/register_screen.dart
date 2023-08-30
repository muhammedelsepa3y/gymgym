import 'package:flutter/material.dart';
import 'package:gymgym/presentation/screens/phone_confirmation/phone_enter_confirm.dart';
import 'package:gymgym/presentation/screens/welcome_screens/welcome_before_auth_screen.dart';
import 'package:gymgym/presentation/widgets/auth_shared/input_field.dart';

import '../../../constants/AppAssets.dart';
import '../../../constants/AppTextStyle.dart';
import '../../../constants/size_config.dart';
import '../../widgets/auth_shared/email_field.dart';
import '../../widgets/auth_shared/password_field.dart';
import '../../widgets/auth_shared/top_logo_with_divider.dart';
import '../../widgets/component.dart';
import '../../widgets/shared/skip_row.dart';
import '../login_screen/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  static const String id = "register";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _fNameController = TextEditingController();
  TextEditingController _lNameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordConfirmController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _fNameController.dispose();
    _lNameController.dispose();
    _passwordConfirmController.dispose();

    super.dispose();
  }

  void _onTapOutside(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => _onTapOutside(context),
          child: Form(
            key: _formKey,
            child: Container(
              padding:  EdgeInsets.only(
                right: 20* SizeConfig.horizontalBlock,
                left: 20* SizeConfig.horizontalBlock,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Expanded(
                    child: ListView(
                      children: [
                        SizedBox(
                          height: 60 * SizeConfig.verticalBlock,
                        ),
                        TopLogoWithDivider(),
                        SizedBox(
                          height: 24* SizeConfig.verticalBlock,
                        ),
                        InputField(
                          controller: _fNameController,
                          hintText: "الإسم الأول",
                          prefixIcon: AppAssets.user_nameIcon,
                          validator: (value){
                            if(value!.isEmpty)
                              return "الرجاء إدخال الإسم الأول";
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10* SizeConfig.verticalBlock,
                        ),
                        InputField(
                          controller: _lNameController,
                          hintText: "الإسم الأخير",
                          prefixIcon: AppAssets.user_nameIcon,
                          validator: (value){
                            if(value!.isEmpty)
                              return "الرجاء إدخال الإسم الأخير";
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10* SizeConfig.verticalBlock,
                        ),
                        EmailField(emailController: _emailController,title: "البريد الإلكتروني",),
                        SizedBox(
                          height: 10* SizeConfig.verticalBlock,
                        ),
                        PasswordField(passwordController: _passwordController,text: "كلمة السر"),
                        SizedBox(
                          height: 10* SizeConfig.verticalBlock,
                        ),
                        PasswordField(passwordController: _passwordConfirmController,text:"تأكيد كلمة السر"),

                        SizedBox(
                          height: 15* SizeConfig.verticalBlock,
                        ),
                        defaultButton(
                          onTap: (){
                            Navigator.pushReplacementNamed(context,PhoneEnterScreen.id);
                          },
                          text:'إنضم الآن',
                          radius: 10* SizeConfig.horizontalBlock,
                          textStyle: AppTextStyle.buttonWhiteFontWith20,
                          heroTag: "registerbutton"
                        ),
                      ],
                    ),
                  ),

                  SkipRow(
                    canPop: true,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
