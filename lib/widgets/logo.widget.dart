import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
            height: 60,
          ),
          Image.asset(
            "assets/images/accel-world-37.jpg",
            height: 80,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Gelateria mk-1",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
      ],
    );
  }
}