import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class TextFormFieldDetailsPlan extends StatelessWidget {
  String text;
  double height;
  IconData? icon;
  Function? iconTap;
  TextFormFieldDetailsPlan({
    required this.text,
    required this.height,
    this.icon,
    this.iconTap,
});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: height,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.grey,
          width: 1.5,
        ),
        ),
        child: TextField(
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: (){iconTap;},
              icon: Icon(icon),
            ),
            border: InputBorder.none,
            hintText: text,
            hintStyle: GoogleFonts.cairo(),
            contentPadding: EdgeInsets.symmetric(vertical: 16.0),
          ),
        ),
      ),
    );
  }
}
