import 'package:movies_flutter_app/model/genre.dart';

class MovieDetail {
  final int id, budget, runtime;
  final bool adult;
  final List<Genre> genres;
  final String releaseDate;

  MovieDetail(this.id, this.adult, this.budget, this.genres, this.releaseDate,
      this.runtime);

  MovieDetail.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        adult = json["adult"],
        budget = json["budget"],
        genres =
            (json["genres"] as List).map((e) => new Genre.fromJson(e)).toList(),
        releaseDate = json["release_date"],
        runtime = json["runtime"];
}
