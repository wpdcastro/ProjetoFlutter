import 'package:flutter/material.dart';
import 'package:frio_ai/constants/routing.dart';
import 'package:frio_ai/pages/sell/widgets/sell_item.dart';
import 'package:frio_ai/pages/widgets/btn_add.dart';

class SellPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar : AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Vendas'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),

      backgroundColor: Colors.white,

      body: Column(
        children: <Widget> [

          SellItem(),
          SellItem(),
        ],
      ),
    );
  }
}