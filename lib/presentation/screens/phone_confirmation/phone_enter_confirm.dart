import 'package:flutter/material.dart';

import '../../../constants/AppTextStyle.dart';
import '../../../constants/size_config.dart';
import '../../widgets/auth_shared/phone_number_component.dart';
import '../../widgets/component.dart';
import '../../widgets/shared/skip_row.dart';
import 'phone_otp_confirm.dart';

class PhoneEnterScreen extends StatefulWidget {
  const PhoneEnterScreen({super.key});
  static const String id = "phoneEnterScreen";

  @override
  State<PhoneEnterScreen> createState() => _PhoneEnterScreenState();
}

class _PhoneEnterScreenState extends State<PhoneEnterScreen> {
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _phoneCountryController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _phoneController.dispose();
    _phoneCountryController.dispose();

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
                        Text(
                          "أكد رقمك",
                          style: AppTextStyle.appBarFont,
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(
                          height: 5 * SizeConfig.verticalBlock,
                        ),
                        Text(
                          " سيتم إرسال كود مباشرة بعد تأكيد رقمك",
                          style: AppTextStyle.bodyGreyFont,
                        ),

                        SizedBox(
                          height: 24* SizeConfig.verticalBlock,
                        ),
                        PhoneNumberInputFieldComponent(
                          countryCodeController: _phoneCountryController,
                          phoneNumberController: _phoneController,
                        ),


                        SizedBox(
                          height: 15* SizeConfig.verticalBlock,
                        ),
                        defaultButton(
                          onTap: (){
                            Navigator.pushNamed(context,PhoneOTPScreen.id);
                          },
                          text:'أكد رقمك',
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
