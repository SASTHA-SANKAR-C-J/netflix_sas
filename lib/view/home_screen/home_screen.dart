import 'package:flutter/material.dart';
import 'package:flutter_application_splash/global_widgets/scoller/scoller.dart';
import 'package:flutter_application_splash/view/home_screen/movies.dart';
import 'package:flutter_application_splash/view/home_screen/tv_shows.dart';
import 'package:flutter_application_splash/view/my_list/my_list.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List imglist = [
    'assets/images/pic5.png',
    'assets/images/pic6.png',
    'assets/images/pic7.png',
    'assets/images/pic1.png',
    'assets/images/pic2.png',
    'assets/images/pic3.png',
    'assets/images/pic8.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/Rectangle 26.png',
                    fit: BoxFit.fitWidth,
                  )),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/images/logos_netflix-icon.png',
                    ),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TvShows(),));
                    }, child: Text("TV Shows", style: TextStyle(color: Colors.white)),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MoviesScreen(),));
                    }, child: Text("Movies", style: TextStyle(color: Colors.white)),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyListScreen(),));
                    }, child: Text("My List", style: TextStyle(color: Colors.white)),),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(Icons.add, color: Colors.white),
                    Text("My List", style: TextStyle(color: Colors.white))
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.play_arrow, color: Colors.black),
                      Text("Play", style: TextStyle(color: Colors.black))
                    ],
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white)),
                ),
                Column(
                  children: [
                    Icon(Icons.info_outline, color: Colors.white),
                    Text("Info", style: TextStyle(color: Colors.white))
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 0, 10),
            child: Text("Previews",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(
              height: 110,
              child: ListView.builder(
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: CircleAvatar(
                    radius: 51,
                    backgroundImage: AssetImage(imglist[index]),
                  ),
                ),
                itemCount: 7,
                scrollDirection: Axis.horizontal,
              )),
          ScrollerWidget(name: "Popular on Netflix"),
          ScrollerWidget(name: "Trending Now"),
          ScrollerWidget(name: "My List"),
          ScrollerWidget(name: "African Movies"),
          ScrollerWidget(name: "New Releses"),
        ],
      ),
      
    );


  }
}
