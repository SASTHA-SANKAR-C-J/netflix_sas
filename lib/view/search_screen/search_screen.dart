import 'package:flutter/material.dart';
import 'package:flutter_application_splash/global_widgets/scoller/top_searches_bar/top_searches_bar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          SearchBar(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 80, 78, 78)),
          shape: MaterialStatePropertyAll(LinearBorder()),
          leading: Icon(Icons.search,color: Colors.white,),
          hintText: "Search for a show, movie, genre, e.t.c.",
          hintStyle: MaterialStatePropertyAll(TextStyle(color: Colors.white,fontWeight: FontWeight.w300)),
          trailing: [Icon(Icons.keyboard_voice_rounded,color: Colors.white,)],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 0, 15),
            child: Text("Top Searches",style: TextStyle(color: Colors.white,fontSize: 27,fontWeight: FontWeight.bold)),
          ),
          TopSearchesBar(searchi: "Citation"),
          TopSearchesBar(searchi: "Oloture"),
          TopSearchesBar(searchi: "The Setup"),
          TopSearchesBar(searchi: "Breaking Bad"),
          TopSearchesBar(searchi: "The Governor"),
          TopSearchesBar(searchi: "Ozark"),
        ],
      ),
    );
  }
}