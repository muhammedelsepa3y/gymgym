import 'package:flutter/material.dart';
import 'package:gymgym/presentation/screens/home_layout/home_layout.dart';

import '../../../constants/AppTextStyle.dart';

class SkipRow extends StatelessWidget {
  bool canPop = false;
  void Function()? onPressed;
  SkipRow({this.canPop = false, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return   Row(
        children:[
          TextButton(
            onPressed: (){
              Navigator.pushNamedAndRemoveUntil(context, HomeLayout.id, (route) => false);
            },
            child: Text(
              'تخطي',
              style: AppTextStyle.bodyWhiteFontWith14,
            ),

          ),
          Expanded(child: SizedBox()),
          canPop?TextButton(
            onPressed:onPressed?? (){
              FocusScope.of(context).requestFocus(FocusNode());
                Navigator.pop(context);
            },
            child: Text(
              'عودة',
              style: AppTextStyle.bodyWhiteFontWith14,
            ),

          ):SizedBox(),
        ]

    );
  }
}
