import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymgym/constants/AppAssets.dart';
import 'package:gymgym/presentation/widgets/component.dart';
import 'package:gymgym/presentation/widgets/plan_widgets/text_form_field_details_plan.dart';

// ignore: must_be_immutable
class DetailsPlanScreen extends StatelessWidget {
  DetailsPlanScreen({super.key});

  var timeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: SvgPicture.asset(
                      AppAssets.backArrow,
                    ),
                  ),
                  Text(
                    'تفاصيل الخطة',
                    style: GoogleFonts.cairo(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.0,
              ),
              divider(
                hight: 2.0,
                thickness: 1.6,
              ),
              SizedBox(
                height: 18.0,
              ),
              TextFormFieldDetailsPlan(
                text: 'اسم الخطة',
                height: 66,
              ),
              SizedBox(
                height: 12.0,
              ),
              TextFormFieldDetailsPlan(
                text: 'الطول',
                height: 66,
              ),
              SizedBox(
                height: 12.0,
              ),
              TextFormFieldDetailsPlan(
                text: 'الوزن الحالي',
                height: 66,
              ),
              SizedBox(
                height: 12.0,
              ),
              TextFormFieldDetailsPlan(
                text: 'مدة الانتهاء',
                height: 66,
                icon: Icons.arrow_downward_sharp,
                iconTap: () {
                  ///TODO : Do This Date When You Use Bloc.
                  showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.parse('2022-10-30'),
                  );
                },
              ),
              SizedBox(
                height: 12.0,
              ),
              TextFormFieldDetailsPlan(
                text: 'الهدف',
                height: 100,
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    defaultButton(
                      text: 'حفظ',
                      size: 20.0,
                      radius: 12.0,
                      onTap: () {},
                      width: 160.3,
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: defaultButton(
                        text: 'حذف',
                        size: 20.0,
                        radius: 12.0,
                        onTap: () {},
                        width: 160.0,
                        color: Colors.black,
                        textColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
