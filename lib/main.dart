import 'package:flutter/material.dart';
import 'package:frio_ai/pages/add_order/add_order.dart';
import 'package:frio_ai/pages/config/config.dart';
import 'package:frio_ai/pages/login_page/login.page.dart';
import 'package:frio_ai/pages/menu_page/menu_page.dart';
import 'package:frio_ai/pages/order/order.dart';
import 'package:frio_ai/pages/sell/sell.dart';
import 'package:frio_ai/pages/stock_page/stock_page.dart';
import 'constants/routing.dart';
import 'routes.dart' as router;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gelateria',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      //home: LoginPage(),
      //home: MenuPage(),
      initialRoute: "/",
      routes: {
        "/" : (context) => MenuPage(),
        '/login' : (context) => LoginPage(),
        '/stock' : (context) => StockPage(),
        '/order' : (context) => OrderPage(),
        '/order/create' : (context) => AddOrderPage(),
        '/sell' : (context) => SellPage(),
        '/config' : (context) => ConfigPage(),
      }
    );
  }
}

class AddSellPage {
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      onGenerateRoute: router.generateRoute,
    );
  }
}