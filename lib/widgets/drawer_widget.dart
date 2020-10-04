import 'package:flutter/material.dart';
import 'package:movies_flutter_app/style/theme.dart' as Style;

import '../screens/home_screen.dart';

class Drawer_Widget extends StatelessWidget {
  const Drawer_Widget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: Style.Colors.mainColor),
          accountEmail: Text(
            "fahdmekky@gmail.com",
            style: TextStyle(fontSize: 13, color: Colors.grey),
          ),
          accountName: Text(
            "Fahd Mekawy",
            style: TextStyle(
                fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          currentAccountPicture: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                    "https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/17265155_1470223889656659_7177572980527779685_n.jpg?_nc_cat=110&_nc_sid=174925&_nc_ohc=Yix5VVNSX2oAX9vOSz2&_nc_ht=sconte"
                    "nt-hbe1-1.xx&oh=24c61e7e74c065671a45e7c2fade5cea&oe=5F9E7D72"),
              ),
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text(
            "Home",
            style: TextStyle(fontSize: 18),
          ),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
          ),
        ),
        ListTile(
          trailing: Chip(
            backgroundColor: Colors.red,
            label: Text(
              "12",
              style: TextStyle(color: Colors.white),
            ),
          ),
          leading: Icon(Icons.person),
          title: Text(
            "Profile",
            style: TextStyle(fontSize: 18),
          ),
          onTap: null,
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text(
            "Settings",
            style: TextStyle(fontSize: 18),
          ),
          onTap: null,
        ),
        ListTile(
          leading: Icon(Icons.arrow_back),
          title: Text(
            "Logout",
            style: TextStyle(fontSize: 18),
          ),
          onTap: null,
        ),
      ],
    );
  }
}
