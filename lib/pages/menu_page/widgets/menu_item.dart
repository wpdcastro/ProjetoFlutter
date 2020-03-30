import 'package:flutter/material.dart';
import 'package:frio_ai/constants/routing.dart';
import 'package:frio_ai/pages/stock_page/stock_page.dart';
import 'package:frio_ai/widgets/input.widget.dart';

class MenuItem extends StatelessWidget {
  final String name;
  final int index;
  final Color color;
  final Widget image;
  final Widget icon;
  final String route;

  const MenuItem({Key key, this.name, this.index, this.color, this.image, this.icon, this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget> [
                Center(
                  child: Ink(
                    child: IconButton(
                      icon: Icon(Icons.android),
                      color: Colors.white,
                      onPressed: () {
                        //Navigator.pushNamed(context, route);
                        Navigator.pushNamed(context, '/login');
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Text(name, 
                    style: TextStyle(
                      fontFamily: 'Google', 
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ),
              ],
            ),
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