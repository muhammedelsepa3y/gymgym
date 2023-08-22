import 'package:flutter/material.dart';
import 'package:gymgym/presentation/widgets/search_widgets/search_items.dart';

class MostVisited extends StatelessWidget {
  const MostVisited({super.key});

  static String id = 'BestOffer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SearchNavigate(
          text: 'الأكثر زيارة',
        ),
      ),
    );
  }
}

