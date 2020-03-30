import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frio_ai/constants/consts_api.dart';
import 'package:frio_ai/models/pokeapi.dart';
import 'package:mobx/mobx.dart';
import 'package:http/http.dart' as http;
part 'poket_api_store.g.dart';


class PoketApiStore = _PoketApiStoreBase with _$PoketApiStore;

abstract class _PoketApiStoreBase with Store {

  @observable 
  PokeAPI pokeAPI;

  //@computed
  //PokeAPI get pokeAPI -> pokeAPI; 

  @action
  fetchPokemonList() {
    pokeAPI = null;
    loadPokeAPI().then((pokeList) {   
      pokeAPI = pokeList;
    });
  }

  @action
  Widget getImage({String numero}) {
    return CachedNetworkImage(
      imageUrl: "http://via.placeholder.com/200x150",
      placeholder: (context, url) => CircularProgressIndicator(),
      errorWidget: (context, url, error) => Icon(Icons.error),
    );
  }
  Future<PokeAPI> loadPokeAPI() async {
    try {
      final response = await http.get(ConstsAPI.pokeapiURL);
      var decodeJson = jsonDecode(response.body);
      return PokeAPI.fromJson(decodeJson);
    } catch (error) {
      print("Erro ao carregar lista");
      return null;
    }
  }
}