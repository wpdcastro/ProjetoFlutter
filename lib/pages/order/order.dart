import 'package:flutter/material.dart';
import 'package:frio_ai/constants/routing.dart';
import 'package:frio_ai/pages/widgets/btn_add.dart';

class OrderPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar : AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Encomendas'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),

      backgroundColor: Colors.white,

      body: Column(
        children: <Widget> [
          BtnAdd(
            label: 'Adicionar Encomenda',
            route: ConstantRoutes.AddOrderPageRoute,
          ),

          Container(
            height: 120,
            color: Colors.grey,
            child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.map),
                  title: Text('Data: 20/03/2020  Total: RS 12,00'),
                ),
              ],
            ),
          ),
         

       
        ],
      ),
    );
  }
}