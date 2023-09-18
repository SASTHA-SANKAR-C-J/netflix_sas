import 'package:flutter/material.dart';
import 'package:flutter_application_splash/view/blank_screen/blank_screen3.dart';

class MyListScreen extends StatefulWidget {
  const MyListScreen({super.key});

  @override
  State<MyListScreen> createState() => _MyListScreenState();
}

class _MyListScreenState extends State<MyListScreen> {
  List imglist = [
    'assets/images/pic5.png',
    'assets/images/pic6.png',
    'assets/images/pic7.png',
    'assets/images/pic1.png',
    'assets/images/pic2.png',
    'assets/images/pic3.png',
    'assets/images/pic8.png',
    'assets/images/pic6.png',
    'assets/images/pic7.png',
    'assets/images/pic1.png',
    'assets/images/pic2.png',
    'assets/images/pic1.png',
    'assets/images/pic2.png',
    'assets/images/pic3.png',
    'assets/images/pic8.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Image.asset('assets/images/logos_netflix-icon.png'),
        backgroundColor: Colors.black,
        title: Row(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BlankScreen3(),));
                },
                child: Row(
                  children: [
                    Text(
                      "My List",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                    )
                  ],
                ))
          ],
        ),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisExtent: 150),
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(3.0),
          child: Container(
            width: 150,
            child: Image.asset(imglist[index],fit: BoxFit.fitWidth,),
          ),
        ),
        itemCount: 14,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(3),

      ),
    );
  }
}
