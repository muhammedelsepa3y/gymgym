import 'package:flutter_svg/flutter_svg.dart';

class CustomSVGLoad{
  static void LoadIcons() async{
    List loaders=[
      SvgAssetLoader("")
    ];
    for(var loader in loaders){
      svg.cache.putIfAbsent(loader.cacheKey(null), () => loader.loadBytes(null));
    }

  }
}