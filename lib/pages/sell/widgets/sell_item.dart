import 'package:flutter/material.dart';

class SellItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      color: Colors.grey,
      child: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Data: 20/03/2020  Total: RS 12,00'),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Data: 20/03/2020  Total: RS 20,00'),
          ),
        ],
      ),
    );
  }
}