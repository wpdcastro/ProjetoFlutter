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
            children: <Widget> [
              Container( 
                height: 30,
                child: Text('Bem vindo(a) ao',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'Google',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget> [
              Container( 
                
                child: Text('Encomendei', 
                  style: TextStyle(
                    fontSize: 38,
                    fontFamily: 'Google',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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