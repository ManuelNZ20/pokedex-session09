import 'package:dio/dio.dart';

class GetPokeApi {
  final _dio = Dio();

  Future<Map<String, dynamic>> getPokemon({int id = 1}) async {
    final response = await _dio.get('https://pokeapi.co/api/v2/pokemon/$id');
    return response.data;
  }
}
