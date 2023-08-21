import 'package:flutter/material.dart';

import '../../../constants/size_config.dart';
import '../../widgets/custom_appbar.dart';
import '../../widgets/home_componant.dart';
class BehindYouScreen extends StatelessWidget {
  static String id = "BehindYou";
  const BehindYouScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppbar(title: "المجاور لك"),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: GridView.builder(

            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                mainAxisExtent:270*SizeConfig.verticalBlock,
                mainAxisSpacing:12*SizeConfig.verticalBlock,
                crossAxisSpacing:13*SizeConfig.horizontalBlock,
                maxCrossAxisExtent: 180


            ),
            shrinkWrap:true,
            itemCount: 6,
            itemBuilder: (BuildContext context, int index)=> const DefaultAppContainer(),

          ),
        ),
      ),
    );
  }
}
