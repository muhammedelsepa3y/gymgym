import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormFieldPlan extends StatelessWidget {
  const TextFormFieldPlan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
      child: Container(
        height: 76.0,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: TextField(
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                  ),),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            hintText: 'هذا نص تجريبي فقط',
            hintStyle: GoogleFonts.cairo(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
