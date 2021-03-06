import 'package:movies_flutter_app/model/movies_response.dart';
import 'package:movies_flutter_app/repository/repository.dart';
import 'package:rxdart/rxdart.dart';

class MoviesListBloc {
  final MovieRepository _repository = MovieRepository();
  final BehaviorSubject<MoviesResponse> _subject =
      BehaviorSubject<MoviesResponse>();

  getMovies() async {
    MoviesResponse response = await _repository.getMovies();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<MoviesResponse> get subject => _subject;
}

final moviesBloc = MoviesListBloc();
