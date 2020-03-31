import 'package:flutter/material.dart';

class AddOrderPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar : AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Cadastro de Encomenda'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black38,
          onPressed: () => Navigator.pop(context, false),
        ),
      ),

      backgroundColor: Colors.white,

      body: Column(
        children: <Widget> [
          
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Nome do Cliente",
              labelStyle: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            style: TextStyle(fontSize: 20,),
          ),

          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Preço",
              labelStyle: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            style: TextStyle(fontSize: 20,),
          ),

          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Quantidade em Estoque",
              labelStyle: TextStyle(
                color: Colors.black38,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            style: TextStyle(fontSize: 20,),
          ),

        ],
      ),
    );
  }
}