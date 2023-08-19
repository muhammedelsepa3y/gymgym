import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymgym/constants/AppColors.dart';

class SettingComponent extends StatefulWidget {
  String title;
  IconData? prefixIcon;
  IconData? suffixIcon;
  void Function()? onTap;

   SettingComponent({required this.title,required this.prefixIcon,required this.suffixIcon,this.onTap,super.key});

  @override
  State<SettingComponent> createState() => _SettingComponentState();
}

class _SettingComponentState extends State<SettingComponent> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery=MediaQuery.sizeOf(context);
    return  GestureDetector(
      onTap:widget.onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: AppColors.pRedAccentColor),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                 Icon(
                  widget.suffixIcon,
                  color: Colors.white,
                  size: 25,
                ),
                SizedBox(
                  width: mediaQuery.width * .02,
                ),
                Text(
                  widget.title,
                  style: GoogleFonts.cairo(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
             Icon( widget.prefixIcon,
              color: Colors.white,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
