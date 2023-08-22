import 'package:flutter/material.dart';

import '../../../constants/AppTextStyle.dart';
import '../../../constants/size_config.dart';

class TopLogoWithDivider extends StatelessWidget {
  const TopLogoWithDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 150* SizeConfig.horizontalBlock,
          height: 120* SizeConfig.verticalBlock,
          decoration: BoxDecoration(
            color: Color(0xffEB5A5A),
            borderRadius: BorderRadius.circular(50* SizeConfig.horizontalBlock),
          ),
          child: Center(
            child: Text(
              'Logo',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 38* SizeConfig.verticalBlock,
        ),
        Text(
          'GymGym',
          style: AppTextStyle.appName,
        ),
        SizedBox(
          height: 24* SizeConfig.verticalBlock,
        ),
        Divider(
          color: Colors.white,
          thickness: 1,

        ),

      ],
    );
  }
}
