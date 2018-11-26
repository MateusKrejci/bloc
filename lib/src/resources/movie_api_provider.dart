import 'dart:async';
import 'package:http/http.dart';
import 'dart:convert';
import '../models/item_model.dart';

class MovieProvider {
  Client client = Client();
  final _url =
      "http://api.themoviedb.org/3/movie/popular?api_key=6b0d6f17186eba14c3071bd0583b9882";

  Future<ItemModel> fetchMovieList() async {
    print("Entred!");

    final response = await client.get(_url);

    print(response.body.toString());

    if (response.statusCode == 200) {
      //se a chamada for executada com sucesso, ai fazemos o parse do json
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load post');
    }
  }
}
