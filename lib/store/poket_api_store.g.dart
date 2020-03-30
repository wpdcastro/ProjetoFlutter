// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poket_api_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PoketApiStore on _PoketApiStoreBase, Store {
  final _$pokeAPIAtom = Atom(name: '_PoketApiStoreBase.pokeAPI');

  @override
  PokeAPI get pokeAPI {
    _$pokeAPIAtom.context.enforceReadPolicy(_$pokeAPIAtom);
    _$pokeAPIAtom.reportObserved();
    return super.pokeAPI;
  }

  @override
  set pokeAPI(PokeAPI value) {
    _$pokeAPIAtom.context.conditionallyRunInAction(() {
      super.pokeAPI = value;
      _$pokeAPIAtom.reportChanged();
    }, _$pokeAPIAtom, name: '${_$pokeAPIAtom.name}_set');
  }

  final _$_PoketApiStoreBaseActionController =
      ActionController(name: '_PoketApiStoreBase');

  @override
  dynamic fetchPokemonList() {
    final _$actionInfo = _$_PoketApiStoreBaseActionController.startAction();
    try {
      return super.fetchPokemonList();
    } finally {
      _$_PoketApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Widget getImage({String numero}) {
    final _$actionInfo = _$_PoketApiStoreBaseActionController.startAction();
    try {
      return super.getImage(numero: numero);
    } finally {
      _$_PoketApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }
}
