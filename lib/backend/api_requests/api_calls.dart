import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class OpenPokemonUrlCall {
  static Future<ApiCallResponse> call({
    String pokeAPIUrl = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'openPokemonUrl',
      apiUrl: '${pokeAPIUrl}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class GetPokemonListCall {
  static Future<ApiCallResponse> call({
    int maxShown = 100,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getPokemonList',
      apiUrl:
          'https://pokeapi.co/api/v2/pokemon-species?limit=${maxShown}&offset=0',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class GetPokemonCall {
  static Future<ApiCallResponse> call({
    String id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getPokemon',
      apiUrl: 'https://pokeapi.co/api/v2/pokemon/${id}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class GetPokemonByNameCall {
  static Future<ApiCallResponse> call({
    String pokeName = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getPokemonByName',
      apiUrl: 'https://pokeapi.co/api/v2/pokemon/${pokeName}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class GetSpeciesByNameCall {
  static Future<ApiCallResponse> call({
    String pokeName = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getSpeciesByName',
      apiUrl: 'https://pokeapi.co/api/v2/pokemon-species/${pokeName}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}
