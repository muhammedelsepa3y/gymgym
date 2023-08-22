import 'package:flutter/material.dart';
import 'package:gymgym/constants/AppAssets.dart';
import 'package:gymgym/constants/AppColors.dart';
import 'package:gymgym/constants/AppTextStyle.dart';
import 'package:gymgym/presentation/widgets/component.dart';
import 'package:gymgym/presentation/widgets/custom_appbar.dart';

class PayWayScreen extends StatefulWidget {
  static String id = "PayWayScreen";
  PayWayScreen({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _PayWayScreenState createState() => _PayWayScreenState();
}

int selectedIndex = 0;

class _PayWayScreenState extends State<PayWayScreen> {
  @override
  Widget build(
    BuildContext context,
  ) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: CustomAppbar(title: 'اختر طريقة الدفع'),
      body: Padding(
        padding: EdgeInsets.all(height * 0.03),
        child: Column(
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
            GridView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: width * 0.5,
                childAspectRatio: 1.2,
                crossAxisSpacing: width * 0.04,
                mainAxisSpacing: height * 0.03,
              ),
              itemCount: imgList.length,
              itemBuilder: (BuildContext ctx, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3,
                        color: selectedIndex == index
                            ? AppColors.pRedAccentColor
                            : AppColors.tWhiteColor,
                      ),
                      color: AppColors.tWhiteColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Image.asset(imgList[index]),
                  ),
                );
              },
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
                  if (selectedIndex == 4 || selectedIndex == 5) {
                    Navigator.pushNamed(context, 'CreditPaymentScreen');
                  } else {
                    Navigator.pushNamed(context, 'WalletPaymentScreen');
                  }
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

final List<String> imgList = [
  AppAssets.etisalat,
  AppAssets.vodafone,
  AppAssets.fawry,
  AppAssets.orange,
  AppAssets.mastercard,
  AppAssets.visa,
];
