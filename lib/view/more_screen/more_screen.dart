import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 190,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Image.asset('assets/images/Group 67.png'),
                  Image.asset('assets/images/Group 66.png'),
                  Image.asset('assets/images/Group 67.png'),
                  Image.asset('assets/images/Group 66.png'),
                  Image.asset('assets/images/Group 67.png'),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/bx_bxs-pencil.png'),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    "Manage Profiles",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 250,
            color: Colors.grey[900],
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.message_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Tell friends about Netflix.",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                  Text(
                    "Lorem ipsum dolor sit amet, consecure adiplicing elit.Sit quam dui, vivmua bibendum ut. A morbi mi ut totture flies non massa",
                    style: TextStyle(color: Colors.white),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Terms & Conditions",
                        style: TextStyle(color: Colors.white),
                      )),
                  Row(
                    children: [
                      Container(
                        height: 37,
                        width: MediaQuery.of(context).size.width * 0.6,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 37,
                        width: MediaQuery.of(context).size.width * 0.32,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: Center(
                            child: Text(
                          "Copy Link",
                        )),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/Group 93.png'),
                      Image.asset('assets/images/Line 4.png'),
                      Image.asset('assets/images/Group 92.png'),
                      Image.asset('assets/images/Line 4.png'),
                      Image.asset('assets/images/Gmail-logo 1.png'),
                      Image.asset('assets/images/Line 4.png'),
                      Image.asset('assets/images/Group 77.png'),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 0, 5),
            child: Row(
              children: [
                Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "My List",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.grey,
          ),
          Container(
            
            width: MediaQuery.of(context).size.width * 0.9,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "App Settings",
                      style: TextStyle(color: Colors.white),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Account",
                      style: TextStyle(color: Colors.white),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Help     ",
                      style: TextStyle(color: Colors.white),
                    )),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign Out",
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.start,
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
