import 'package:flutter/material.dart';

class SellAddPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar : AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Registrar Venda'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),

      backgroundColor: Colors.white,
    );
  }
}