import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gymgym/presentation/screens/forget_password/forget_password.dart';
import 'package:gymgym/presentation/widgets/auth_shared/email_field.dart';
import 'package:gymgym/presentation/widgets/auth_shared/input_field.dart';

import '../../../constants/AppAssets.dart';
import '../../../constants/AppColors.dart';
import '../../../constants/AppTextStyle.dart';
import '../../../constants/size_config.dart';
import '../../widgets/auth_shared/password_field.dart';
import '../../widgets/auth_shared/top_logo_with_divider.dart';
import '../../widgets/component.dart';
import '../../widgets/shared/skip_row.dart';
import '../home_layout/home_layout.dart';
import '../welcome_screens/welcome_after_auth_screen.dart';

class LoginScreen extends StatefulWidget {
   LoginScreen({super.key});
  static const String id = "login";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>  {
  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();



  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
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
                        EmailField(emailController: _emailController),
                        SizedBox(
                          height: 24* SizeConfig.verticalBlock,
                        ),
                        PasswordField(passwordController: _passwordController,text: "كلمة السر"),
                        SizedBox(
                          height: 15* SizeConfig.verticalBlock,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, ForgetPassword.id);
                                }
                                , child: Text("هل نسيت كلمة السر؟",style:AppTextStyle.bodyWhiteFontWith12)
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30* SizeConfig.verticalBlock,
                        ),
                        defaultButton(
                          onTap: (){
                            Navigator.pushNamed(context,WelcomeUserScreen.id);
                          },
                          text:'دخول',
                          radius: 10* SizeConfig.horizontalBlock,
                          textStyle: AppTextStyle.buttonWhiteFontWith20,
                          heroTag: 'loginButton',
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
