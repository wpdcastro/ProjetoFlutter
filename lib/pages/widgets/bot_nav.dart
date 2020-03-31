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
            icon: Icon(Icons.business),
            title: Text('Vendas'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('Encomendas'),
          ),
        ],
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}