import 'package:flutter/material.dart';

import '../pages/details_page.dart';
import '../styles/fonts_style.dart';

class MenuOptionWidget extends StatelessWidget {
  final String title;
  final String imageUrl;

  const MenuOptionWidget({
    Key? key,
    required this.title,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) => DetailsPage(title: title))
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(30.0)),
          child: Stack(
            children: <Widget>[
              SizedBox(
                width: 160.0,
                height: 240.0,
                child: Image.asset(imageUrl, fit: BoxFit.cover),
              ),
              Positioned(
                left: 0.0,
                top: 0.0,
                width: 160.0,
                height: 240.0,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                        Colors.black.withOpacity(0),
                        Colors.black.withOpacity(0.3),
                      ])),
                ),
              ),
              Positioned(
                left: 0.0,
                top: 0.0,
                width: 160.0,
                height: 240.0,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 30.0),
                  child: Text(
                    title,
                    style: FontsStyle.primaryTextStyle.copyWith(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
