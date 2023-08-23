// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:gymgym/constants/AppColors.dart';
import 'package:gymgym/constants/AppTextStyle.dart';
import 'package:gymgym/presentation/widgets/component.dart';
import 'package:gymgym/presentation/widgets/custom_appbar.dart';

class SubtypeScreen extends StatefulWidget {
  static String id = "SubtypeScreen";
  const SubtypeScreen({super.key});

  @override
  _SubtypeScreenState createState() => _SubtypeScreenState();
}

class _SubtypeScreenState extends State<SubtypeScreen> {
  late List<SubtypeModel> subtypeModel;
  int value = 0;
  @override
  void initState() {
    super.initState();
    subtypeModel = [
      SubtypeModel(plan: 'جلسه واحده ', cost: 30, state: true),
      SubtypeModel(plan: 'شهر', cost: 350, state: false),
      SubtypeModel(plan: '3 اشهر', cost: 900, state: false),
      SubtypeModel(plan: '6 اشهر', cost: 1500, state: false),
      SubtypeModel(plan: 'سنة', cost: 2000, state: false),
    ];
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.all(height * 0.02),
      child: Scaffold(
        appBar: CustomAppbar(title: 'نوع الاشتراك'),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: height * 0.01),
              child: Center(
                child: Text(
                  'عند الحجز في الجيم من خلالنا سيمنحك هذا ١٤ يوم كمدة إضافية \n فقط عند الانتهاء من الإشتراك  “الشهري، ٣ أشهر، ٦ أشهر”',
                  style: AppTextStyle.bodyGreyFont,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      for (var i = 0; i < subtypeModel.length; i++) {
                        subtypeModel[i].state = i == index;
                      }
                    });
                    value = subtypeModel[index].cost;
                    // print(value);
                  },
                  child: Container(
                    width: width * 0.4,
                    height: height * 0.07,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(width * 0.03),
                      border: Border.all(
                        color: subtypeModel[index].state
                            ? AppColors.tWhiteColor
                            : AppColors.tWhiteColor,
                        width: subtypeModel[index].state ? 3 : 1,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: width * 0.03),
                          child: Text(
                            subtypeModel[index].plan,
                            style: AppTextStyle.bodyWhiteFontWith16.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.03),
                          child: Text(
                            '${subtypeModel[index].cost} جنيه',
                            style: AppTextStyle.bodyWhiteFontWith16.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: height * 0.03,
                );
              },
              itemCount: subtypeModel.length,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            SizedBox(
              height: height / 15,
              width: width * 0.85,
              child: defaultButton(
                size: width * .05,
                onTap: () {
                  Navigator.pushNamed(context, 'PayWayScreen');
                  print(value);
                },
                text: 'إكمال الحجز',
                radius: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SubtypeModel {
  final String plan;
  final int cost;
  bool state;

  SubtypeModel({required this.plan, required this.cost, required this.state});
}
