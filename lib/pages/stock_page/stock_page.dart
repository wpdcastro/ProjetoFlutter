import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:frio_ai/models/pokeapi.dart';
import 'package:frio_ai/pages/stock_page/widgets/app_bar_home.dart';
import 'package:frio_ai/pages/stock_page/widgets/item.dart';
import 'package:frio_ai/pages/widgets/bot_nav.dart';
import 'package:frio_ai/store/poket_api_store.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class StockPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PoketApiStore poketApiStore = PoketApiStore();
    poketApiStore.fetchPokemonList();

    double statusWidth = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BotNav(),
      body: Stack(
        children: <Widget> [
          Container(
            //color: Colors.red,
            child: Column(
              children: <Widget>[

                Container(
                  height: statusWidth,
                  color: Colors.lightBlueAccent,
                ),

                AppBarHome(),

                SizedBox(
                  height: 20,
                ),

                Container(
                  width: 330,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      icon: Icon(Icons.search, 
                        color: Colors.lightBlue,
                      ),
                      labelText: "Produto X",
                      labelStyle: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    style: TextStyle(fontSize: 20,),
                  ),
                ),

                Expanded(
                  child: Container(
                    child: Observer(
                      name: 'ListaHomePage',
                      builder: (BuildContext context) {
                        PokeAPI _pokeApi = poketApiStore.pokeAPI;
                        return (_pokeApi != null) ?
                          AnimationLimiter(
                            child: GridView.builder( 
                              physics: BouncingScrollPhysics(),
                              padding: EdgeInsets.all(12),
                              addAutomaticKeepAlives: false,
                              gridDelegate: 
                                new SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2
                                ),
                              itemCount: _pokeApi.pokemon.length,
                              itemBuilder: (context, index) {
                               // Pokemon pokemon = _pokeApi.getPokemon(index: index);
                                return AnimationConfiguration.staggeredGrid( 
                                  position: index,
                                  duration: const Duration(milliseconds: 375),
                                  columnCount: 2,
                                  child: ScaleAnimation( 
                                    child: GestureDetector( 
                                      child: Item(
                                        index: index, 
                                        name: 'texte', 
                                        //_pokeApi.getImage(numero: pokemon.num),
                                      ),
                                      onTap: () { 
                                        Navigator.push(
                                          context, 
                                          MaterialPageRoute(
                                            builder : (BuildContext context) => 
                                              Container(), // PokeDatailPage(index: index)
                                            fullscreenDialog: true,
                                          )
                                        );
                                      }
                                    ),
                                  ),
                                );
                              }
                            ),
                          ) : Text('Carregando dados da API');
                      }
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}