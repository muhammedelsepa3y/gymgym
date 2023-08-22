import 'package:flutter_svg/flutter_svg.dart';
import 'package:gymgym/constants/AppAssets.dart';

class CustomSVGLoad{
  static void LoadIcons() async{
    List loaders=[
      SvgAssetLoader(AppAssets.backArrow),
      SvgAssetLoader(AppAssets.facebookIcon),
      SvgAssetLoader(AppAssets.googleIcon),
      SvgAssetLoader(AppAssets.lockIcon),
      SvgAssetLoader(AppAssets.mailIcon),
      SvgAssetLoader(AppAssets.user_nameIcon),
      SvgAssetLoader(AppAssets.mapIcon),
      SvgAssetLoader(AppAssets.star),
      SvgAssetLoader(AppAssets.favourite),
      SvgAssetLoader(AppAssets.doubleArrowLeft),
      SvgAssetLoader(AppAssets.location),


    ];
    for(var loader in loaders){
      svg.cache.putIfAbsent(loader.cacheKey(null), () => loader.loadBytes(null));
    }

  }
}