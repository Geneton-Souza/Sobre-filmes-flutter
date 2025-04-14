import 'dart:convert';
import 'package:sobrefilmes/app/helpers/consts.dart';
import 'package:sobrefilmes/app/models/movie.dart';
import 'package:sobrefilmes/app/services/search_movies_service.dart';
import 'package:http/http.dart' as http;

class ReleasesMoviesService implements SearchMoviesService {
  List<Movie> movies = <Movie>[];

  @override
  Future<List<Movie>> getMovies() async {
    try {
      final response =
          await http.get(Uri.parse(releasesMoviesUrl), headers: requestHeader);
      if (response.statusCode == 200) {
        for (dynamic movie in json.decode(response.body)['results']) {
          movies.add(Movie.fromMap(movie));
        }
      } else {
        throw Exception(response.body);
      }
      return movies;
    } catch (e) {
      print(e);
      return movies;
    }
  }
}
