import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:movies_flutter_app/screens/main_drawer.dart';
import 'package:movies_flutter_app/style/theme.dart' as Style;
import 'package:movies_flutter_app/widgets/genres.dart';
import 'package:movies_flutter_app/widgets/now_playing.dart';
import 'package:movies_flutter_app/widgets/persons.dart';
import 'package:movies_flutter_app/widgets/top_movies.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<Null> refreshList() async {
    await Future.delayed(
      Duration(seconds: 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      backgroundColor: Style.Colors.mainColor,
      appBar: AppBar(
        backgroundColor: Style.Colors.mainColor,
        centerTitle: true,
        title: Text("Movies App"),
        actions: <Widget>[
          IconButton(
              icon: Icon(EvaIcons.searchOutline, color: Colors.white),
              onPressed: null)
        ],
      ),
      body: RefreshIndicator(
        onRefresh: refreshList,
        color: Style.Colors.secondColor,
        child: ListView(
          children: <Widget>[
            NowPlaying(),
            GenresScreen(),
            PersonsList(),
            TopMovies(),
          ],
        ),
      ),
    );
  }
}
