import 'package:flutter/material.dart';

import '../../../constants/AppTextStyle.dart';
import '../../../constants/size_config.dart';
import '../../widgets/auth_shared/email_field.dart';
import '../../widgets/auth_shared/top_logo_with_divider.dart';
import '../../widgets/component.dart';
import '../../widgets/shared/skip_row.dart';
import '../login_screen/login_screen.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});
  static const String id = "forgetPassword";

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController _emailController = TextEditingController();


  GlobalKey<FormState> _formKey = GlobalKey<FormState>();



  @override
  void dispose() {
    _emailController.dispose();
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
                          height: 20* SizeConfig.verticalBlock,
                        ),
                        Center(child: Text("هل نسيت كلمة السر؟",style:AppTextStyle.buttonWhiteFontWith20)),

                        SizedBox(
                          height: 40* SizeConfig.verticalBlock,
                        ),
                        EmailField(emailController: _emailController),

                        SizedBox(
                          height: 25* SizeConfig.verticalBlock,
                        ),
                        defaultButton(
                          onTap: (){
                            Navigator.popUntil(context, ModalRoute.withName(LoginScreen.id));
                          },
                          text:'دخول',
                          radius: 10* SizeConfig.horizontalBlock,
                          textStyle: AppTextStyle.buttonWhiteFontWith20,
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
