import 'package:flutter/material.dart';
import 'package:gymgym/presentation/widgets/auth_shared/email_field.dart';
import 'package:gymgym/presentation/widgets/component.dart';
import 'package:image_picker/image_picker.dart';

import '../../../constants/AppAssets.dart';
import '../../../constants/AppColors.dart';
import '../../../constants/AppTextStyle.dart';
import '../../../constants/size_config.dart';
import '../../widgets/auth_shared/input_field.dart';
import '../../widgets/auth_shared/outlinedButton.dart';
import '../../widgets/auth_shared/phone_number_component.dart';
import '../../widgets/profile_widgets/profile_detail_component.dart';
import '../../widgets/shared/custom_appbar.dart';
import '../phone_confirmation/phone_otp_confirm.dart';

class ProfileEditScreen extends StatefulWidget {
  static String id = "profileEditScreen";

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  final ImagePicker picker = ImagePicker();

   XFile? image;

  TextEditingController _nameController = TextEditingController(text: "محمد عبد الرحمن");

  TextEditingController _emailController = TextEditingController(text: "muhammedelsepa3y@gmail.com");

  TextEditingController _phoneController = TextEditingController();

  TextEditingController _phoneCountryController = TextEditingController();

  TextEditingController _addressController = TextEditingController();

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
      appBar:CustomAppbar(
        title: "تعديل الحساب",
        onTap: (){
          Navigator.pop(context,image??null);
        },
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
                          Center(
                            child: Text(
                              "يمكنك تعديل بيانات حسابك في هذة الصفحة!",
                              style: AppTextStyle.bodyGreyFont,
                              textDirection: TextDirection.rtl,
                            ),
                          ),
                          SizedBox(
                            height: 30 * SizeConfig.verticalBlock,
                          ),
                          Text("أضف صورة شخصية",style: AppTextStyle.bodyWhiteFontWith14Bold,),
                          SizedBox(
                            height: 10 * SizeConfig.verticalBlock,
                          ),
                          defaultButton(
                            onTap: () async {
                              image = await picker.pickImage(source: ImageSource.gallery);
                            },
                            text:'تحديد صورة من المعرض!',
                            radius: 10* SizeConfig.horizontalBlock,
                            textStyle: AppTextStyle.bodyWhiteFontWith14Bold,
                          ),
                          SizedBox(
                            height: 20 * SizeConfig.verticalBlock,
                          ),
                          Text("الإسم",style: AppTextStyle.bodyWhiteFontWith14Bold,),
                          SizedBox(
                            height: 10 * SizeConfig.verticalBlock,
                          ),
                          InputField(
                            controller: _nameController,
                            hintText: "مستخدم",
                            prefixIcon: AppAssets.user_nameIcon,
                            textDirection: TextDirection.rtl,
                            validator: (value){
                              if(value!.isEmpty)
                                return "الرجاء إدخال الإسم";
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 15 * SizeConfig.verticalBlock,
                          ),
                          Text("الإيميل",style: AppTextStyle.bodyWhiteFontWith14Bold,),
                          SizedBox(
                            height: 10 * SizeConfig.verticalBlock,
                          ),
                          EmailField(emailController: _emailController),
                        SizedBox(
                          height: 15 * SizeConfig.verticalBlock,
                        ),
                        Text("رقم الموبايل",style: AppTextStyle.bodyWhiteFontWith14Bold,),
                        SizedBox(
                          height: 10 * SizeConfig.verticalBlock,
                        ),

                        PhoneNumberInputFieldComponent(
                          countryCodeController: _phoneCountryController,
                          phoneNumberController: _phoneController,
                        ),

                        SizedBox(
                          height: 15 * SizeConfig.verticalBlock,
                        ),
                        Text("العنوان",style: AppTextStyle.bodyWhiteFontWith14Bold,),
                        SizedBox(
                          height: 10 * SizeConfig.verticalBlock,
                        ),
                        InputField(
                          controller: _addressController,
                          hintText: "العنوان",
                          prefixIcon: AppAssets.mapIcon,
                          textDirection: TextDirection.rtl,
                          validator: (value){
                            if(value!.isEmpty)
                              return "الرجاء إدخال العنوان";
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
                                      Navigator.pushNamed(context,PhoneOTPScreen.id);
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
