import 'package:sobrefilmes/app/viewmodels/releases_movies_viewmodel.dart';
import 'package:sobrefilmes/ui/components/movie_card.dart';
import 'package:sobrefilmes/ui/pages/movie_details.dart';
import 'package:flutter/material.dart';

class Releases extends StatefulWidget {
  const Releases({super.key});

  @override
  State<Releases> createState() => _ReleasesState();
}

class _ReleasesState extends State<Releases> {
  final ReleasesMoviesViewmodel releasesViewmodel = ReleasesMoviesViewmodel();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: releasesViewmodel.getReleasesMovies(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Image.asset(
                  "assets/images/upcoming.png",
                  height: 80,
                  width: 80,
                ),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 40),
                  child: Text(
                    "Próximos Lançamentos",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SliverList.builder(
                itemBuilder: (context, index) => InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MovieDetails(
                              movie: releasesViewmodel.moviesList[index]))),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 32),
                    child:
                        MovieCard(movie: releasesViewmodel.moviesList[index]),
                  ),
                ),
                itemCount: releasesViewmodel.moviesList.length,
              ),
            ],
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
