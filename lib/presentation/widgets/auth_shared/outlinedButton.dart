import 'package:flutter/material.dart';

import '../../../constants/AppColors.dart';
import '../../../constants/AppTextStyle.dart';
import '../../../constants/size_config.dart';

class CustomOutlinedButton extends StatelessWidget {
  String title;
  void Function()? onTap;
  CustomOutlinedButton({
    this.onTap,
    required this.title
});
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 10* SizeConfig.verticalBlock),
        backgroundColor: AppColors.pDarkColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10* SizeConfig.horizontalBlock),
        ),
      ),

      child: Text(title,style: AppTextStyle.buttonWhiteFontWith20,),
      onPressed:onTap?? (){
        Navigator.pop(context);
      },

    );
  }
}
