import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gymgym/constants/AppAssets.dart';
import 'package:gymgym/constants/AppColors.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:gymgym/constants/AppTextStyle.dart';
import 'package:gymgym/constants/size_config.dart';
import 'package:gymgym/presentation/widgets/component.dart';
import 'package:gymgym/presentation/widgets/details_widgets/gym_info.dart';
import 'package:gymgym/presentation/widgets/details_widgets/rating_info.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({super.key});
  static String id = "DetailScreen";
  final List<String> imgList = [
    'https://www.fitness-world.in/wp-content/uploads/2022/01/5-Reasons-Why-Your-Residential-Building-Needs-a-Professional-Gym-Banner.jpg',
    'https://static.toiimg.com/photo/96125662.cms',
    'https://media.istockphoto.com/id/1132006407/photo/empty-gym.jpg?s=612x612&w=0&k=20&c=si73-OzIvdfuD7J82-WGJogpxgulXHVxmzldCjopuno=',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYPmM1s1mQfVpTVn5rkBqCe96BRc-7k6qbHw&usqp=CAU',
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 2, // Added
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.blackColor,
          elevation: 0.0,
          title: Text(
            'معلومات عن الجيم',
            style: AppTextStyle.appBarFont,
            textDirection: TextDirection.rtl,
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset(
              AppAssets.backArrow,
              height: SizeConfig.verticalBlock * 35,
              width: SizeConfig.horizontalBlock * 36,
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.horizontalBlock * 20),
              child: InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  AppAssets.fav,
                  height: SizeConfig.verticalBlock * 25,
                  width: SizeConfig.horizontalBlock * 36,
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            divider(
                endIndent: width * 0.04,
                indent: width * .03,
                thickness: width * 0.004),
            Padding(
              padding: EdgeInsets.only(left: width * 0.025),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Gym Name ',
                    style: AppTextStyle.bodyWhiteFontWith16
                        .copyWith(fontSize: 22)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                  borderRadius:
                      BorderRadius.all(Radius.circular(height * 0.035)),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: height * 0.3,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(seconds: 2),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      scrollDirection: Axis.horizontal,
                      viewportFraction: 1.0,
                    ),
                    items: imgList
                        .map((item) => Center(
                              child: Image.network(
                                item,
                                fit: BoxFit.cover,
                              ),
                            ))
                        .toList(),
                  )),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              height: height / 2.5,
              child: ContainedTabBarView(
                tabBarProperties: TabBarProperties(
                    width: width,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorColor: AppColors.tWhiteColor),
                tabs: [
                  Text('لمحه', style: AppTextStyle.bodyWhiteFontWith16),
                  Text('مراجعات', style: AppTextStyle.bodyWhiteFontWith16),
                ],
                views: [
                  gymInfo(context),
                  ratingWidget(context),
                ],
              ),
            ),
            SizedBox(
              height: height / 15,
              width: width * 0.9,
              child: defaultButton(
                size: width * .05,
                onTap: () {
                  Navigator.pushNamed(context, 'SubtypeScreen');
                },
                text: 'إكمال الحجز',
                radius: 10,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
