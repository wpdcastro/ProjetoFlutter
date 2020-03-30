import 'package:flutter/material.dart';

class AppBarMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 140,
      decoration: BoxDecoration(
        //color: Colors.orange,
        color: Colors.lightBlueAccent,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: 20
                ),
                child: Text('Olá', 
                  style: TextStyle(
                    fontFamily: 'Google',  
                    fontSize: 28,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10
                ),
                child: Text('User', 
                  style: TextStyle(
                    fontFamily: 'Google', 
                    fontWeight: FontWeight.bold, 
                    fontSize: 28,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}