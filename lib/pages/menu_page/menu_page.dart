import 'package:flutter/material.dart';
import 'package:frio_ai/constants/routing.dart';
import 'package:frio_ai/pages/menu_page/widgets/app_bar_menu.dart';
import 'package:frio_ai/pages/menu_page/widgets/menu_item.dart';
import 'package:frio_ai/pages/widgets/bot_nav.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    double statusWidth = MediaQuery.of(context).padding.top;
    
     return Scaffold(
/*
      appBar: AppBar(
        title: const Text("Gelateria"),
        backgroundColor: Colors.lightBlue,
      ),
*/
      backgroundColor: Colors.white,
      bottomNavigationBar: BotNav(),

      body: Stack(
        children: <Widget> [

          AppBarMenu(),

          GridView.count(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.all(12),
            addAutomaticKeepAlives: true,
            crossAxisCount: 2,
            children: <Widget> [
              
              SizedBox(
                height: 280,
              ),

              SizedBox(
                height: 280,
              ),

              MenuItem(  
                name: 'Encomendas',
                icon: Icon(
                  Icons.android,
                  color: Colors.white,
                  size: 55.0,
                ),
                route: ConstantRoutes.StockPageRoute,
              ),
              MenuItem(  
                name: 'Vendas', 
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 55.0,
                ),
                route: ConstantRoutes.LoginPageRoute,
              ),
              MenuItem(  
                name: 'Estoque',
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 55.0,
                ),
                route: ConstantRoutes.StockPageRoute,
              ),
              MenuItem(  
                name: 'Configurações',
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 55.0,
                ),
                route: ConstantRoutes.StockPageRoute,
              ),
            ],
          )
        ],
      )
    );
  }
}