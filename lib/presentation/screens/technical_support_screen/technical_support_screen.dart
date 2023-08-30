import 'package:flutter/material.dart';

import '../../../constants/AppAssets.dart';
import '../../../constants/AppTextStyle.dart';
import '../../../constants/size_config.dart';
import '../../widgets/auth_shared/email_field.dart';
import '../../widgets/auth_shared/input_field.dart';
import '../../widgets/auth_shared/outlinedButton.dart';
import '../../widgets/auth_shared/phone_number_component.dart';
import '../../widgets/component.dart';
import '../../widgets/shared/custom_appbar.dart';
import 'anim_after_sending.dart';

class TechnicalSupport extends StatefulWidget {
  const TechnicalSupport({super.key});
  static String id="TechnicalSupport";

  @override
  State<TechnicalSupport> createState() => _TechnicalSupportState();
}

class _TechnicalSupportState extends State<TechnicalSupport> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _phoneCouController = TextEditingController();
  TextEditingController _messageController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _nameController.dispose();
     _phoneController.dispose();
    _messageController.dispose();
    _phoneCouController.dispose();

    super.dispose();
  }
  void _onTapOutside(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: "الدعم الفني",
      ),
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
                          height: 16 * SizeConfig.verticalBlock,
                        ),
                        Text(
                          "تواصل معنا",
                          style: AppTextStyle.appBarFont,
                          textDirection: TextDirection.rtl,
                        ),
                        SizedBox(
                          height: 15 * SizeConfig.verticalBlock,
                        ),

                        EmailField(emailController: _emailController),
                        SizedBox(
                          height: 20 * SizeConfig.verticalBlock,
                        ),

                        InputField(
                          controller: _nameController,
                          hintText: "الإسم",
                          prefixIcon: AppAssets.user_nameIcon,
                          textDirection: TextDirection.rtl,
                          validator: (value){
                            if(value!.isEmpty)
                              return "الرجاء إدخال الإسم";
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 20 * SizeConfig.verticalBlock,
                        ),



                        PhoneNumberInputFieldComponent(
                          countryCodeController: _phoneCouController,
                          phoneNumberController: _phoneController,
                        ),
                        SizedBox(
                          height: 20 * SizeConfig.verticalBlock,
                        ),
                        InputField(
                          maxLines: 6,
                          controller: _messageController,
                          hintText: "وصف المشكلة",
                          textDirection: TextDirection.rtl,
                          validator: (value){
                            if(value!.isEmpty)
                              return "الرجاء إدخال الرسالة";
                            return null;
                          },
                        ),
                        Padding(
                          padding:  EdgeInsets.only(top: 45* SizeConfig.verticalBlock),
                          child: Row(
                              children:[
                                Expanded(
                                  child: defaultButton(
                                    onTap: (){
                                      Navigator.pushNamed(context, AnimationAfterSending.id);

                                    },
                                    text:'حفظ',
                                    radius: 10* SizeConfig.horizontalBlock,
                                    textStyle: AppTextStyle.buttonWhiteFontWith20,
                                  ),
                                ),
                                SizedBox(
                                  width: 15* SizeConfig.horizontalBlock,
                                ),
                                Expanded(
                                    child: CustomOutlinedButton(title: "إلغاء")
                                ),
                              ]
                          ),
                        )

                      ],
                    ),
                  ),



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
