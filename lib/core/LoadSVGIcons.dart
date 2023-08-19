import 'package:flutter_svg/flutter_svg.dart';
import 'package:gymgym/constants/AppAssets.dart';

class CustomSVGLoad{
  static void LoadIcons() async{
    List loaders=[
      SvgAssetLoader(AppAssets.backArrow)
    ];
    for(var loader in loaders){
      svg.cache.putIfAbsent(loader.cacheKey(null), () => loader.loadBytes(null));
    }

  }
}