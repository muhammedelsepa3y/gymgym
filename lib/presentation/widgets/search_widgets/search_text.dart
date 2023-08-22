import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class SearchText extends StatelessWidget {
  String text;
  Function function;
  SearchText({
    required this.text,
    required this.function,
});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        function();
      },
      child: Text(
        '   ${text}',
        style: GoogleFonts.cairo(
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
