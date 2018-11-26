import 'dart:async';
import 'movie_api_provider.dart';
import '../models/item_model.dart';

//Essa classe Repository é o ponto central de onde os dados fluirão para o BLOC.
class Repository {
  //declaro minha classe que faz a chamada para a rede
  final moviesApiProvider = MovieProvider();

  //metodo que busca a lista de filmes
  Future<ItemModel> fetchAllMovies() => moviesApiProvider.fetchMovieList();
}
