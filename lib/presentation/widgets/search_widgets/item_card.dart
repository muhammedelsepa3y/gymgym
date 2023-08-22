import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymgym/constants/AppAssets.dart';
import 'package:gymgym/constants/AppColors.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            Text(
              'صورة الجيم',
              style: GoogleFonts.cairo(
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  Center(
                    child: Text(
                      'Game Name',
                      style: GoogleFonts.cairo(
                          fontSize: 20.0
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    '  مسافة: 0.5 كيلومتر',
                    style: GoogleFonts.cairo(
                      fontSize: 15.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          AppAssets.heartIcon,
                        ),
                        Text(
                            '⭐ 4.5'
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: AppColors.pRedAccentColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(18),
                  bottomRight: Radius.circular(18),

                ),

              ),
            ),
          ],
        ),
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(18),
          color: AppColors.pSoftColor,
        ),
        height: 250.0,
        width: 175.0,
      ),
    );
  }
}
