import 'package:flutter/material.dart';

class BuildIntroTexts extends StatelessWidget {

  String headerMessage;
  String subMessage;
  BuildIntroTexts({required this.headerMessage, required this.subMessage});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Text(
          headerMessage,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 2),
          child:  Text(
            subMessage,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.normal
            ),
          ),
        ),
      ],
    );
  }
}
