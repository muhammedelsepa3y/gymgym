import 'package:flutter/material.dart';

import '../../../constants/size_config.dart';
import '../../widgets/home_componant.dart';
import '../../widgets/shared/custom_appbar.dart';
class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});
  static String id = "FavouriteScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: "المفضلة"),
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
    );;
  }
}
