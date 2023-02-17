import 'package:flutter/material.dart';

class StarRatingWidget extends StatelessWidget {
  const StarRatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5.0),
      child: Icon(
        Icons.star,
        color: Colors.yellow[600],
        size: 28.0,
      ),
    );
  }
}
