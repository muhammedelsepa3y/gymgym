import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants/AppAssets.dart';
import '../../../constants/AppColors.dart';
import '../../../constants/AppTextStyle.dart';
import '../../../constants/size_config.dart';

class CustomAppbar extends StatelessWidget implements  PreferredSizeWidget {
  final String title;
  final List<Widget> widgets;
  final bool isBack;
  final bool isHome;
  Widget? leading;

  CustomAppbar(
      {
        super.key,
        required this.title,
        this.isBack = true,
        this.widgets = const <Widget>[],
        this.isHome = false,
        this.leading,
        });


  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  Widget build(BuildContext context) {
    return AppBar(

      leading: isBack
          ? IconButton(
        onPressed: (){},
        icon: SvgPicture.asset(
          AppAssets.backArrow,
          height: SizeConfig.verticalBlock * 13.98,
          width: SizeConfig.horizontalBlock * 7.16,
        ),

      )
          : leading,
      elevation: 0,
      backgroundColor: AppColors.tBlackColor,
      centerTitle: true,
      title: Text(
        title,


textDirection: TextDirection.rtl,
        // style: AppTextStyle.appBarTextStyle.copyWith(
        //   fontSize: SizeConfig.horizontalBlock * 5.5,
        // )
      ),
      actions: widgets,
    );
  }

}

