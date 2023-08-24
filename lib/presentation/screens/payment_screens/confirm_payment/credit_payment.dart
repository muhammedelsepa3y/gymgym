import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

import 'package:gymgym/constants/AppAssets.dart';
import 'package:gymgym/constants/AppColors.dart';
import 'package:gymgym/constants/AppTextStyle.dart';
import 'package:gymgym/presentation/screens/payment_screens/confirm_payment/credit_logic.dart';
import 'package:gymgym/presentation/widgets/component.dart';
import 'package:gymgym/presentation/widgets/shared/custom_appbar.dart';

class CreditPaymentScreen extends StatefulWidget {
  static String id = "CreditPaymentScreen";
  @override
  _CreditPaymentScreenState createState() => _CreditPaymentScreenState();
}

class _CreditPaymentScreenState extends State<CreditPaymentScreen> {
  String cardNumber = '';
  String cardHolderName = '';
  String expiryDate = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppbar(title: 'تأكيد الدفع '),
      body: Padding(
        padding: EdgeInsets.all(height * 0.01),
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Text(
                    'عند الحجز في الجيم من خلالنا سيمنحك هذا ١٤ يوم كمدة إضافية \n فقط عند الانتهاء من الإشتراك  “الشهري، ٣ أشهر، ٦ أشهر”',
                    style: AppTextStyle.bodyGreyFont,
                  ),
                ),
                SizedBox(
                  height: height * 0.02,
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
                              AppAssets.visa,
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
                              AppAssets.mastercard,
                            )),
                      ),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(width * 0.21),
                  child: CreditCardWidget(
                    cardNumber: cardNumber,
                    expiryDate: expiryDate,
                    cardHolderName: cardHolderName,
                    cvvCode: cvvCode,
                    obscureCardCvv: false,
                    showBackView: isCvvFocused,
                    backgroundImage: AppAssets.credit,
                    isHolderNameVisible: true,
                    onCreditCardWidgetChange: (CreditCardBrand) {},
                  ),
                ),
                const SizedBox(height: 20.0),
                SizedBox(
                  height: height * 0.09,
                  child: TextFormField(
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(16),
                      CardNumberInputFormatter(),
                    ],
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelStyle: AppTextStyle.bodyWhiteFontWith16,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(width * 0.03),
                      ),
                      labelText: 'Card Number',
                    ),
                    onChanged: (value) {
                      setState(() {
                        cardNumber = value;
                        print(cardNumber);
                      });
                    },
                  ),
                ),
                const SizedBox(height: 12.0),
                SizedBox(
                  height: height * 0.09,
                  child: SizedBox(
                    height: height * 0.09,
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Valid Name',
                        labelStyle: AppTextStyle.bodyWhiteFontWith16,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(width * 0.03),
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          cardHolderName = value;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 12.0),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        height: height * 0.09,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(4),
                            CardMonthInputFormatter(),
                          ],
                          decoration: InputDecoration(
                            labelText: 'Valid thru',
                            labelStyle: AppTextStyle.bodyWhiteFontWith16,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(width * 0.03),
                            ),
                          ),
                          onChanged: (value) {
                            setState(() {
                              expiryDate = value;
                            });
                          },
                        ),
                      ),
                    ),
                    const SizedBox(width: 12.0),
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          height: height * 0.09,
                          child: TextFormField(
                            maxLength: 3,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: 'CVV',
                              labelStyle: AppTextStyle.bodyWhiteFontWith16,
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(width * 0.03),
                              ),
                            ),
                            onChanged: (value) {
                              setState(() {
                                cvvCode = value;
                              });
                            },
                            onTap: () {
                              setState(() {
                                isCvvFocused = true;
                              });
                            },
                            onEditingComplete: () {
                              setState(() {
                                isCvvFocused = false;
                                print(isCvvFocused);
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                SizedBox(
                  height: height / 15,
                  width: width * 0.85,
                  child: defaultButton(
                    size: width * .05,
                    onTap: () {
                      Navigator.pushNamed(context, 'SuccessPaymentScreen');
                    },
                    text: 'احجز الان ',
                    radius: 10,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
