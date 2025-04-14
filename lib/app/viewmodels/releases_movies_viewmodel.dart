import 'package:sobrefilmes/app/models/movie.dart';
import 'package:sobrefilmes/app/services/releases_movies_services.dart';
import 'package:sobrefilmes/app/services/search_movies_service.dart';

class ReleasesMoviesViewmodel {
  List<Movie> _moviesList = <Movie>[];

  Future<List<Movie>> getReleasesMovies() async {
    final SearchMoviesService service = ReleasesMoviesService();
    _moviesList = await service.getMovies();
    return _moviesList;
  }

  List<Movie> get moviesList => _moviesList;
}
