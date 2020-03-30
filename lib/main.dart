import 'package:flutter/material.dart';
import 'package:frio_ai/pages/login_page/login.page.dart';
import 'package:frio_ai/pages/menu_page/menu_page.dart';
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
      }
    );
  }
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