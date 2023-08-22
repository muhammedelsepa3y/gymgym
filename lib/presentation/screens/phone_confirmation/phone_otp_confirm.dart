import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gymgym/presentation/screens/home_layout/home_layout.dart';

import '../../../constants/AppTextStyle.dart';
import '../../../constants/size_config.dart';
import '../../widgets/component.dart';
import '../../widgets/shared/custom_appbar.dart';
import '../../widgets/shared/skip_row.dart';
import '../welcome_screens/welcome_after_auth_screen.dart';

class PhoneOTPScreen extends StatefulWidget {
  static const String id = 'phone-otp';

  @override
  _PhoneOTPScreenState createState() => _PhoneOTPScreenState();
}

class _PhoneOTPScreenState extends State<PhoneOTPScreen> {
  late Timer _timer;
  int _seconds = 60;
  bool _isActive = true;
  List<TextEditingController> _controllers =
  List.generate(6, (index) => TextEditingController());
  List<FocusNode> _focusNodes = List.generate(6, (index) => FocusNode());
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_seconds == 0) {
        setState(() {
          _isActive = false;
          _timer.cancel();
        });
      } else {
        setState(() {
          _seconds--;
        });
      }
    });
  }

  void _resetTimer() {
    setState(() {
      _seconds = 60;
      _isActive = true;
    });
    _startTimer();
  }

  void _onTapOutside(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: "الأمان",
      ),
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () => _onTapOutside(context),
        child: Form(
          key: _formKey,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 18 * SizeConfig.horizontalBlock,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Expanded(
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 16 * SizeConfig.verticalBlock,
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
                        "أدخل الكود المكون من 6 أرقام المرسل إلي",
                        style: AppTextStyle.bodyGreyFont,
                      ),
                      SizedBox(
                        height: 7 * SizeConfig.verticalBlock,
                      ),
                      Text(
                        "201016673951+",
                        style: AppTextStyle.bodyWhiteFontWith14Bold,
                      ),
                      SizedBox(
                        height: 30 * SizeConfig.verticalBlock,
                      ),
                      Localizations.override(
                        context: context,
                        locale: Locale('en', 'US'),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: List.generate(
                            6,
                                (index) =>
                                SizedBox(
                                  width: 50,
                                  child: TextField(

                                    controller: _controllers[index],
                                    focusNode: _focusNodes[index],
                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.center,
                                    maxLength: 1,

                                    decoration: InputDecoration(counterText: '',
                                      hintText: '',
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white, width: 1.0),
                                        borderRadius: BorderRadius.circular(
                                            10.0),
                                        gapPadding: 10,

                                      ),
                                      contentPadding: EdgeInsets.all(
                                          10 * SizeConfig.horizontalBlock),
                                    ),

                                    onChanged: (value) {
                                      if (value.isNotEmpty && index < 5) {
                                        setState(() {
                                          _controllers[index + 1].text = '';
                                          _focusNodes[index + 1].requestFocus();
                                        });
                                      }
                                      if (value.isEmpty && index > 0) {
                                        setState(() {
                                          _focusNodes[index - 1].requestFocus();
                                        });
                                      }
                                    },
                                  ),
                                ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 7 * SizeConfig.verticalBlock,
                      ),
                      Row(
                        children: [
                          TextButton(onPressed: (_isActive) ? null : _resetTimer,
                              child:Text('إعادة إرسال',style: AppTextStyle.bodyWhiteFontWith16Bold,)
                          ),
                          Expanded(child: SizedBox()),
                          Text(
                            "00:$_seconds",
                            style: AppTextStyle.bodyWhiteFontWith16Bold,
                          ),


                        ],
                      ),
                      SizedBox(
                        height: 40* SizeConfig.verticalBlock,
                      ),

                      defaultButton(
                        onTap: () {
                          Navigator.pushNamedAndRemoveUntil(context,
                              WelcomeUserScreen.id, (route) => false);
                        },
                        text: 'تأكيد',
                        radius: 10 * SizeConfig.horizontalBlock,
                        textStyle: AppTextStyle.buttonWhiteFontWith20,
                      ),
                    ],
                  ),
                ),

                SkipRow(
                  canPop: false,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }


}
