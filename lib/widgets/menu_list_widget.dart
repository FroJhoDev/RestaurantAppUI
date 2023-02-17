import 'package:flutter/material.dart';

import 'menu_option_widget.dart';

class MenuListWidget extends StatelessWidget {
  MenuListWidget({super.key});

  final List<String> image = [
    "assets/images/recipe01.png",
    "assets/images/recipe02.png",
    "assets/images/recipe03.png",
  ];

  final List<String> title = [
    "Frango ao Molho",
    "Panelada",
    "Carne Assada",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: SizedBox(
          height: 260.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              MenuOptionWidget(title: title[0], imageUrl: image[0]),
              MenuOptionWidget(title: title[1], imageUrl: image[1]),
              MenuOptionWidget(title: title[2], imageUrl: image[2]),
            ],
          ),
        ),
      ),
    );
  }
}
