import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:frio_ai/widgets/input.widget.dart';
import 'package:frio_ai/widgets/logo.widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gelateria',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: teste(),
    );
  }
}
class teste extends StatelessWidget {
  
  var _priceCtrl = new MoneyMaskedTextController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: <Widget>[
          Logo(),
          Input(
            ctrl: _priceCtrl,
            label: "Gelinho", 
          ),
          Input(
            ctrl: _priceCtrl,
            label: "Tenda", 
          ),
          Container(
            margin: EdgeInsets.all(30),
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(
                60,
              ),
            ),
            child : FlatButton(
              child: Text("Calcular",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 25,
                ),
              ),
              onPressed: () {}
            ),
            ),
        ],
      ),
    );
  }
}