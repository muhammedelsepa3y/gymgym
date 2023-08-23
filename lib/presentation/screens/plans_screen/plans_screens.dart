import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymgym/constants/AppAssets.dart';
import 'package:gymgym/presentation/screens/plans_screen/details_plan_screen.dart';
import 'package:gymgym/presentation/widgets/component.dart';
import 'package:gymgym/presentation/widgets/plan_widgets/text_form_field_plan.dart';

class PlansScreen extends StatelessWidget {
  const PlansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                AppAssets.planPicture,
                height: 400.0,
                width: 400.0,
              ),
              SizedBox(
                height: 15.0,
              ),
              TextFormFieldPlan(),
              TextFormFieldPlan(),
              SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: defaultButton(
                  onTap: () {
                    ///TODO: Using Router After Understand Structure Of Project
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsPlanScreen(),
                      ),
                    );
                  },
                  radius: 12.0,
                  size: 20.0,
                  text: '+ اضافة خطة جديدة!',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
