import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String name;
  final int index;
  final Color color;
  final Widget image;

  const Item({Key key, this.name, this.index, this.color, this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: <Widget>[
            
          ],
        ), 
        decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
         ),
      ),
    );
  }
}