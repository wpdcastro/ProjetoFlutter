import 'package:flutter/material.dart';

class MenuPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Vendas'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('Encomendas'),
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),

      body: Container(
        child: ListView(
          children: <Widget>[

            SizedBox(
              width: 220, height: 740,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                ),
                child: Text('Olá User', style: TextStyle(color: Colors.black.withOpacity(0.6), )),
              ),
            ),

          ],
        ),
      ),
    );
  }
}