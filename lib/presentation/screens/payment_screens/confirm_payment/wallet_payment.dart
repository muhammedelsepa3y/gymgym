import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gymgym/business_logic/sub_type_cubit/sub_type_cubit.dart';
import 'package:gymgym/business_logic/sub_type_cubit/sub_type_states.dart';
import 'package:gymgym/constants/AppAssets.dart';
import 'package:gymgym/constants/AppColors.dart';
import 'package:gymgym/constants/AppTextStyle.dart';
import 'package:gymgym/presentation/widgets/component.dart';
import 'package:gymgym/presentation/widgets/custom_appbar.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class WalletPaymentScreen extends StatelessWidget {
  WalletPaymentScreen({super.key});

  static String id = "WalletPaymentScreen";
  var passwordController = TextEditingController();
  var phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: CustomAppbar(title: 'تأكيد الدفع'),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: height * 0.01),
            child: Center(
              child: Text(
                'عند الحجز في الجيم من خلالنا سيمنحك هذا ١٤ يوم كمدة إضافية \n فقط عند الانتهاء من الإشتراك  “الشهري، ٣ أشهر، ٦ أشهر”',
                style: AppTextStyle.bodyGreyFont,
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(width * 0.02),
                  child: Container(
                      color: AppColors.tWhiteColor,
                      height: height * 0.09,
                      width: width * 0.22,
                      child: Image.asset(
                        AppAssets.etisalat,
                      )),
                ),
                SizedBox(
                  width: width * 0.05,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(width * 0.02),
                  child: Container(
                      color: AppColors.tWhiteColor,
                      height: height * 0.09,
                      width: width * 0.22,
                      child: Image.asset(
                        AppAssets.vodafone,
                      )),
                ),
                SizedBox(
                  width: width * 0.05,
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(width * 0.02),
                    child: Container(
                        color: AppColors.tWhiteColor,
                        height: height * 0.09,
                        width: width * 0.22,
                        child: Image.asset(
                          AppAssets.orange,
                        ))),
              ],
            ),
          ),
          SizedBox(
            height: height * 0.06,
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.03, right: width * 0.03),
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: InternationalPhoneNumberInput(
                textAlign: TextAlign.end,
                maxLength: 12,
                textStyle: AppTextStyle.bodyWhiteFontWith16,
                initialValue: PhoneNumber(isoCode: 'EG'),
                errorMessage: 'رقم الهاتف غير صحيح ',
                hintText: 'رقم الهاتف',
                onInputChanged: (PhoneNumber number) {
                  print(number.phoneNumber);
                },
                onInputValidated: (bool value) {
                  print(value);
                },
                selectorConfig: const SelectorConfig(
                  selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                ),
                ignoreBlank: false,
                spaceBetweenSelectorAndTextField: 1,
                autoValidateMode: AutovalidateMode.disabled,
                selectorTextStyle: const TextStyle(
                  color: AppColors.tWhiteColor,
                ),
                textFieldController: phoneController,
                formatInput: true,
                keyboardType: const TextInputType.numberWithOptions(
                    signed: true, decimal: true),
                inputBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(width * 0.03),
                ),
                onSaved: (PhoneNumber number) {
                  print('On Saved: $number');
                },
              ),
            ),
          ),
          SizedBox(
            height: height * 0.03,
          ),
          Padding(
            padding: EdgeInsets.only(left: width * 0.03, right: width * 0.03),
            child: TextFormField(
              decoration: InputDecoration(
                labelStyle: AppTextStyle.bodyWhiteFontWith16,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(width * 0.03),
                ),
                labelText: 'الرقم السري',
              ),
            ),
          ),
          SizedBox(
            height: height * 0.06,
          ),
          SizedBox(
            height: height / 15,
            width: width * 0.85,
            child: defaultButton(
              size: width * .05,
              onTap: () {
                Navigator.pushNamed(context, 'SuccessPaymentScreen');
              },
              text: 'تأكيد',
              radius: 10,
            ),
          ),
        ]),
      ),
    );
  }
}
