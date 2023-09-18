import 'package:flutter/material.dart';
import 'package:flutter_application_splash/view/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:flutter_application_splash/view/home_screen/home_screen.dart';

class UserName extends StatelessWidget {
  const UserName({super.key});

  @override
  Widget build(BuildContext context) {
    List mylist = [
      'assets/images/Group 66.png',
      'assets/images/Group 67.png',
      'assets/images/Group 68.png',
      'assets/images/Group 69.png',
      'assets/images/Screenshot 2023-09-18 094014.png',
    ];
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Container(
              width: 138,
              height: 37.5,
              child: Image.asset('assets/images/logos_netflix (1).png'),
            ),
          ),
          actions: [Image.asset('assets/images/bx_bxs-pencil.png')],
        ),
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Center(
            child: GridView.builder(
              itemCount: 5,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) =>
                  InkWell(child: Image.asset(mylist[index]),onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => BottomNavScreen(),));
                  },),
            ),
          ),
        )
        );
  }
}
