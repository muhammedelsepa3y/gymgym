import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymgym/constants/AppAssets.dart';
import 'package:gymgym/presentation/widgets/component.dart';
import 'package:gymgym/presentation/widgets/home_componant.dart';
import 'package:gymgym/presentation/widgets/search_widgets/item_card.dart';

// ignore: must_be_immutable
class SearchNavigate extends StatelessWidget {
   SearchNavigate({
    super.key,
    required this.text,
  });
  String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: SvgPicture.asset(
                AppAssets.backArrow,
              ),
            ),
            Text(
              text,
              style: GoogleFonts.cairo(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 2.0,
        ),
        divider(
          hight: 2.0,
          thickness: 1.6,
        ),
        const SizedBox(
          height: 25.0,
        ),
        const Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              DefaultAppContainer(),
              SizedBox(
                width: 20.0,
              ),
              DefaultAppContainer(),
            ],
          ),
        ),
        const SizedBox(
          height: 25.0,
        ),
        const Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              DefaultAppContainer(),
              SizedBox(
                width: 20.0,
              ),
              DefaultAppContainer(),
            ],
          ),
        ),
      ],
    );
  }
}
