import 'package:flutter/material.dart';
import 'package:movies_flutter_app/model/cast_response.dart';
import 'package:movies_flutter_app/repository/repository.dart';
import 'package:rxdart/rxdart.dart';

class CastsBloc{
  final MovieRepository _repository = MovieRepository();
  final BehaviorSubject<CastResponse> _subject = BehaviorSubject<CastResponse>();

  getCast(int id) async{
    CastResponse response = await _repository.getCast(id);
    _subject.sink.add(response);
  }

  drainStream() {
    _subject.value = null;
  }

  @mustCallSuper
  void dispose() async {
    await _subject.drain();
    _subject.close();
  }

  BehaviorSubject<CastResponse> get subject => _subject;

}

final castsBloc = CastsBloc();
