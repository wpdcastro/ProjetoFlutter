import 'package:flutter/material.dart';

class BtnAdd extends StatelessWidget {
  final String label;
  final String route;

  const BtnAdd({Key key, this.label, this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
            height: 60,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.3, 1],
                colors: [
                  Color(0xFFF58524),
                  Color(0XFFF9287F),
                ],
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: SizedBox.expand(
              child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget> [
                    Text(
                      label,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      child: SizedBox(
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        height: 28,
                        width: 28,
                      ),
                    ),
                  ],
                ),
                onPressed: () {   
                  Navigator.pushNamed(context, route);  
                },
              ),
            ),
          );
  }
}