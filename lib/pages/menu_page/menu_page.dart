import 'package:flutter/material.dart';
import 'package:frio_ai/constants/routing.dart';
import 'package:frio_ai/pages/menu_page/widgets/app_bar_menu.dart';
import 'package:frio_ai/pages/menu_page/widgets/menu_item.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    double statusWidth = MediaQuery.of(context).padding.top;
    
     return Scaffold(

      appBar: AppBar(
        title: const Text("Gelateria"),
        backgroundColor: Colors.lightBlue,
      ),

      backgroundColor: Colors.white,
      
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
                height: 160,
              ),

              SizedBox(
                height: 160,
              ),

              MenuItem(  
                name: 'Encomendas',
                icon: Icon(Icons.menu),
                route: ConstantRoutes.StockPageRoute,
              ),
              MenuItem(  
                name: 'Vendas', 
                icon: Icon(Icons.menu),
              ),
              MenuItem(  
                name: 'Estoque',
                icon: Icon(Icons.menu),
              ),
              MenuItem(  
                name: 'Configuração',
                icon: Icon(Icons.menu),
              ),
            ],
          )
        ],
      )
    );
  }
}