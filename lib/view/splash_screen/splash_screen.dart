import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_splash/view/user_name/user_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => UserName(),)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [Image.asset('assets/images/logos_netflix.png'),
            SizedBox(height: 10,),
            CircularProgressIndicator(
              color: Colors.red,)],),
        ),
      ));
  }
}