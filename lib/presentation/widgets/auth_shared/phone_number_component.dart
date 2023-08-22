import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../../constants/AppTextStyle.dart';
class PhoneNumberInputFieldComponent extends StatelessWidget {
  final TextEditingController phoneNumberController;
  final TextEditingController countryCodeController;
   PhoneNumberInputFieldComponent({Key? key, required this.phoneNumberController, required this.countryCodeController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Localizations.override(
      context: context,
      locale: const Locale('en', 'US'),
      child:  IntlPhoneField(
        invalidNumberMessage: "رقم الهاتف غير صحيح",
        showCountryFlag: true,
        textAlign: TextAlign.end,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        initialCountryCode: 'EG',
        disableLengthCheck: true,
        style: AppTextStyle.buttonWhiteFontWith20,
        showDropdownIcon: false,
        onChanged: (phoneNumber) {
          countryCodeController.text = phoneNumber.countryCode;
        },
        decoration: InputDecoration(
          border: const OutlineInputBorder(borderSide: BorderSide(
            color: Colors.white,
            width: 1,
          )),
          hintText: "رقم الهاتف",
          hintStyle: AppTextStyle.bodyWhiteFontWith14,
        ),
        keyboardType: TextInputType.number,
        controller: phoneNumberController,
        validator: (value) {
          if(value!.number.isEmpty){
            return "رقم الهاتف مطلوب";
          }
          return null;
        },
      ),
    );
  }
}
