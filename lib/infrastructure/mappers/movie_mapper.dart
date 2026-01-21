import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/movie_db/movie_details.dart';
import 'package:cinemapedia/infrastructure/models/movie_db/movie_movie_db.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieMovieDB movieDB) => Movie(
    adult: movieDB.adult,
    backdropPath: (movieDB.backdropPath != '')
        ? 'https://image.tmdb.org/t/p/w500/${movieDB.backdropPath}'
        : 'https://cdn.displate.com/artwork/857x1200/2022-04-15/7422bfe15b3ea7b5933dffd896e9c7f9_46003a1b7353dc7b5a02949bd074432a.jpg',
    genreIds: movieDB.genreIds.map((e) => e.toString()).toList(),
    id: movieDB.id,
    originalLanguage: movieDB.originalLanguage,
    originalTitle: movieDB.originalTitle,
    overview: movieDB.overview,
    popularity: movieDB.popularity * 1000,
    posterPath: (movieDB.posterPath != '')
        ? 'https://image.tmdb.org/t/p/w500/${movieDB.posterPath}'
        : 'https://fireteller.com.au/wp-content/uploads/2020/09/Poster_Not_Available2.jpg',
    releaseDate: movieDB.releaseDate != null
        ? movieDB.releaseDate!
        : DateTime.now(),
    title: movieDB.title,
    video: movieDB.video,
    voteAverage: movieDB.voteAverage,
    voteCount: movieDB.voteCount,
  );

  static Movie movieDetailsToEntity(MovieDetails movieDB) => Movie(
    adult: movieDB.adult,
    backdropPath: (movieDB.backdropPath != '')
        ? 'https://image.tmdb.org/t/p/w500/${movieDB.backdropPath}'
        : 'https://cdn.displate.com/artwork/857x1200/2022-04-15/7422bfe15b3ea7b5933dffd896e9c7f9_46003a1b7353dc7b5a02949bd074432a.jpg',
    genreIds: movieDB.genres.map((e) => e.name).toList(),
    id: movieDB.id,
    originalLanguage: movieDB.originalLanguage,
    originalTitle: movieDB.originalTitle,
    overview: movieDB.overview,
    popularity: movieDB.popularity * 1000,
    posterPath: (movieDB.posterPath != '')
        ? 'https://image.tmdb.org/t/p/w500/${movieDB.posterPath}'
        : 'no-poster',
    releaseDate: movieDB.releaseDate,
    title: movieDB.title,
    video: movieDB.video,
    voteAverage: movieDB.voteAverage,
    voteCount: movieDB.voteCount,
  );
}
