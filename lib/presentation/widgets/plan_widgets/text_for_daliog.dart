import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class TextForDialogSearchScreen extends StatelessWidget {
  TextForDialogSearchScreen({
    super.key,
    required this.text,
    required this.fontStyle,
    this.fontWeight,
  });
  String text;
  double fontStyle;
  FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.cairo(
          fontSize: fontStyle,
          fontWeight:fontWeight,
      ),
    );
  }
}
