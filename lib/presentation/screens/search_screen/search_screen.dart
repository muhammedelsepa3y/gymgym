import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymgym/constants/AppAssets.dart';
import 'package:gymgym/presentation/screens/search_screen/best_offer.dart';
import 'package:gymgym/presentation/screens/search_screen/most_visited.dart';
import 'package:gymgym/presentation/widgets/home_componant.dart';
import 'package:gymgym/presentation/widgets/plan_widgets/linked_lable_radio.dart';
import 'package:gymgym/presentation/widgets/plan_widgets/text_for_daliog.dart';
import 'package:gymgym/presentation/widgets/search_widgets/item_card.dart';
import 'package:gymgym/presentation/widgets/search_widgets/search_text.dart';

import '../../../constants/size_config.dart';
import '../home_screen/behind_you_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchBar(),
                const SizedBox(
                  height: 10.0,

              ),
              SearchText(
                text: 'أفضل عروض',
                function: () {
                  ///TODO: Using Router After Understand Structure Of Project
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BestOffer(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 18.0,
              ),
               const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    DefaultAppContainer(),
                    SizedBox(
                      width: 20.0,
                    ),
                    DefaultAppContainer(),
                  ],
                ),
               ),
                MoreHomeButton(routeName: BestOffer.id),


                const SizedBox(
                  height: 10.0,
                ),

              SearchText(
                text: 'الأكثر زيارة',
                function: () {
                  ///TODO: Using Router After Understand Structure Of Project
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MostVisited(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    DefaultAppContainer(),
                    SizedBox(
                      width: 20.0,
                    ),
                    DefaultAppContainer(),
                  ],

                ),),
                MoreHomeButton(routeName: MostVisited.id),

                const SizedBox(
                  height: 10.0,
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class SearchBar extends StatefulWidget {
  SearchBar({
    super.key,
  });

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  int? _selectedItem;
  TextEditingController _priceFrom=TextEditingController();
  TextEditingController _priceTo=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 10.0),
            child: Container(
              height: 76.0,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      AppAssets.searchIcon,
                      color: Colors.grey,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  hintText: 'بحث عن صالات رياضية',
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  ///TODO: DO THE RATIO WHEN YOU USING BLOC
                  return AlertDialog(
                    backgroundColor: Color(0xff303030),
                    actions: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15.0,
                          ),
                          TextForDialogSearchScreen(
                            text: 'السعر([جنيه])',
                            fontStyle: 14.0,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              TextForDialogSearchScreen(
                                text: 'من ',
                                fontStyle: 14.0,
                                fontWeight: FontWeight.w700,
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              SizedBox(
                                width: 60,
                                child: TextField(

                                  controller: _priceFrom,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,

                                  decoration: InputDecoration(counterText: '',
                                    hintText: '',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 1.0),
                                      borderRadius: BorderRadius.circular(
                                          10.0),
                                      gapPadding: 8,

                                    ),
                                    contentPadding: EdgeInsets.all(
                                        10 * SizeConfig.horizontalBlock),
                                  ),
                                ),
                              ),

                              TextForDialogSearchScreen(
                                text: 'الي ',
                                fontStyle: 14.0,
                                fontWeight: FontWeight.w700,
                              ),
                              SizedBox(
                                width: 60,
                                child: TextField(

                                  controller: _priceTo,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,

                                  decoration: InputDecoration(
                                    hintText: '',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.white, width: 1.0),
                                      borderRadius: BorderRadius.circular(
                                          10.0),
                                      gapPadding: 8,

                                    ),
                                    contentPadding: EdgeInsets.all(
                                        10 * SizeConfig.horizontalBlock),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          TextForDialogSearchScreen(
                            fontStyle: 16.0,
                            text: 'نوع الأشتراك',
                            fontWeight: FontWeight.w900,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          RadioListTile(
                            value: 0,
                            groupValue: _selectedItem,
                            onChanged: (value) {
                              setState(() {
                                _selectedItem = value;
                              });
                            },
                            title: Text("جلسة واحدة")
                          ),
                          RadioListTile(
                            value: 1,
                            groupValue: _selectedItem,
                            onChanged: (value) {
                              setState(() {
                                _selectedItem = value;
                              });
                            },
                            title: Text("شهر"),
                          ),
                          RadioListTile(
                            value: 2,
                            groupValue: _selectedItem,
                            onChanged: (value) {
                              setState(() {
                                _selectedItem = value;
                              });
                            },
                            title: Text("3 أشهر"),
                          ),
                          RadioListTile(
                            value: 3,
                            groupValue: _selectedItem,
                            onChanged: (value) {
                              setState(() {
                                _selectedItem = value;
                              });
                            },
                            title: Text("6 أشهر"),
                          ),
                          RadioListTile(

                            value: 4,
                            groupValue: _selectedItem,
                            onChanged: (value) {
                              setState(() {
                                _selectedItem = value;
                              });
                            },
                            title: Text("سنة"),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              );
            },
            icon: SvgPicture.asset(
              AppAssets.filterIcon,
            ),
          ),
        ),
      ],
    );
  }
}
