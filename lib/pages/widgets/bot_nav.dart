import 'package:flutter/material.dart';

void _onItemTapped(int index) {
//  setState(() {
//    _selectedIndex = index;
//  });
}

class BotNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_grocery_store),
            title: Text('Nova Venda'),
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.add_box,
            ),
            title: Text('Nova Encomenda'),
          ),
        ],
        selectedItemColor: Colors.lightBlue,
        onTap: _onItemTapped,
      ),
    );
  }
}