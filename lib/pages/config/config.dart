import 'package:flutter/material.dart';

class ConfigPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar : AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Configuração'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),

      backgroundColor: Colors.white,

      body: Column(
        children: <Widget> [
          
          Text("Acesse www.encomendei.com.br"),

       
        ],
      ),
    );
  }
}