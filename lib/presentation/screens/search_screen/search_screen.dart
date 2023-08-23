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

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: SingleChildScrollView(
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

              ),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    ItemCard(),
                    SizedBox(
                      width: 20.0,
                    ),
                    ItemCard(),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'المزيد',
                      style: GoogleFonts.cairo(
                        fontSize: 15.0,
                      ),
                    ),
                    SvgPicture.asset(
                      AppAssets.doubleLeftIcon,
                      height: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
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
                    ItemCard(),
                    SizedBox(
                      width: 20.0,
                    ),
                    ItemCard(),
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
                    actions: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 15.0,
                          ),
                          TextForDialogSearchScreen(
                            text: 'السعر(الجنية)',
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
                              TextForDialogSearchScreen(
                                text: '5 ',
                                fontStyle: 14.0,
                                fontWeight: FontWeight.w700,
                              ),
                              TextForDialogSearchScreen(
                                text: 'الي ',
                                fontStyle: 14.0,
                                fontWeight: FontWeight.w700,
                              ),
                              TextForDialogSearchScreen(
                                text: '100 ',
                                fontStyle: 14.0,
                                fontWeight: FontWeight.w700,
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
                            fillColor: MaterialStateProperty.all(Colors.white),
                            groupValue: _selectedItem,
                            onChanged: (value) {
                              setState(() {
                                _selectedItem = value;
                              });
                            },
                            title: Text("R1"),
                          ),
                          RadioListTile(
                            value: 1,
                            fillColor: MaterialStateProperty.all(Colors.white),
                            groupValue: _selectedItem,
                            onChanged: (value) {
                              setState(() {
                                _selectedItem = value;
                              });
                            },
                            title: Text("R2"),
                          ),
                          RadioListTile(
                            value: 2,
                            fillColor: MaterialStateProperty.all(Colors.white),
                            groupValue: _selectedItem,
                            onChanged: (value) {
                              setState(() {
                                _selectedItem = value;
                              });
                            },
                            title: Text("R3"),
                          ),
                          RadioListTile(
                            value: 4,
                            fillColor: MaterialStateProperty.all(Colors.white),
                            groupValue: _selectedItem,
                            onChanged: (value) {
                              setState(() {
                                _selectedItem = value;
                              });
                            },
                            title: Text("R4"),
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
