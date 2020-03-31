import 'package:flutter/material.dart';
import 'package:frio_ai/pages/add_order/add_order.dart';
import 'package:frio_ai/pages/add_sell/add_sell.dart';
import 'package:frio_ai/pages/login_page/login.page.dart';
import 'package:frio_ai/pages/menu_page/menu_page.dart';
import 'package:frio_ai/pages/order/order.dart';
import 'package:frio_ai/pages/sell/sell.dart';
import 'package:frio_ai/pages/stock_page/stock_page.dart';

import 'constants/routing.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
 
 switch (settings.name) {

    case ConstantRoutes.MenuPageRoute: 
      return MaterialPageRoute(builder:  (context) => MenuPage());

    case ConstantRoutes.LoginPageRoute: 
      return MaterialPageRoute(builder:  (context) => LoginPage());

    case ConstantRoutes.StockPageRoute:
      return MaterialPageRoute(builder:  (context) => StockPage());

    case ConstantRoutes.OrderPageRoute:
      return MaterialPageRoute(builder:  (context) => OrderPage());
    
    case ConstantRoutes.AddOrderPageRoute:
      return MaterialPageRoute(builder:  (context) => AddOrderPage());

    case ConstantRoutes.ConfigPageRoute:
      return MaterialPageRoute(builder:  (context) => StockPage());
  
    case ConstantRoutes.SellPageRoute:
      return MaterialPageRoute(builder:  (context) => SellPage());

    default: 
      return MaterialPageRoute(builder:  (context) => MenuPage());
  }
}