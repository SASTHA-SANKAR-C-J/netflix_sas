import 'package:flutter/material.dart';
import 'package:flutter_application_splash/view/coming_soon_screen/coming_soon_screen.dart';
import 'package:flutter_application_splash/view/download_screen/download_screen.dart';
import 'package:flutter_application_splash/view/home_screen/home_screen.dart';
import 'package:flutter_application_splash/view/more_screen/more_screen.dart';
import 'package:flutter_application_splash/view/search_screen/search_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedIntex = 0;
  @override
  Widget build(BuildContext context) {
    List _screens = [
      HomeScreen(),
      SearchScreen(),
      ComingSoon(),
      DownloadScreen(),
      MoreScreen(),
    ];
    return Scaffold(
      body: _screens[selectedIntex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined, color: Colors.grey),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.grey), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection_outlined, color: Colors.grey),
              label: 'Coming Soon'),
          BottomNavigationBarItem(
              icon: Icon(Icons.download_sharp, color: Colors.grey),
              label: 'Downloads'),
          BottomNavigationBarItem(
              icon: Icon(Icons.horizontal_split, color: Colors.grey),
              label: 'More'),
        ],
        currentIndex: selectedIntex,
        onTap: (value) {
          setState(() {
            selectedIntex=value;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
