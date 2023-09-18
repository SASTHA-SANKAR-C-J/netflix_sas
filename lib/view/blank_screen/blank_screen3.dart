import 'package:flutter/material.dart';
import 'package:flutter_application_splash/view/home_screen/movies.dart';
import 'package:flutter_application_splash/view/home_screen/tv_shows.dart';
import 'package:flutter_application_splash/view/my_list/my_list.dart';

import '../bottom_navigation_bar/bottom_navigation_bar.dart';


class BlankScreen3 extends StatefulWidget {
  const BlankScreen3({super.key});

  @override
  State<BlankScreen3> createState() => _BlankScreenState();
}

class _BlankScreenState extends State<BlankScreen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.8,
              width: double.infinity,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BottomNavScreen(),
                              ));
                        },
                        child: Text(
                          "All",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TvShows(),
                              ));
                        },
                        child: Text(
                          "TV Shows",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MoviesScreen(),
                              ));
                        },
                        child: Text(
                          "Movies",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyListScreen(),
                              ));
                        },
                        child: Text(
                          "My List",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        )),
                  ],
                ),
              )),
          InkWell(
              onTap: () => Navigator.pop(context),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 34,
                child: Icon(
                  Icons.close,
                  color: Colors.black,
                  size: 36,
                ),
              ))
        ],
      ),
    );
  }
}
