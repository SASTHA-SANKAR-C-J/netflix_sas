import 'package:flutter/material.dart';

class ScrollerWidget extends StatefulWidget {
  const ScrollerWidget({super.key, required this.name});
  final String name;

  @override
  State<ScrollerWidget> createState() => _ScrollerWidgetState();
}

class _ScrollerWidgetState extends State<ScrollerWidget> {
  List imglist = [
    'assets/images/pic1.png',
    'assets/images/pic2.png',
    'assets/images/pic3.png',
    'assets/images/pic5.png',
    'assets/images/pic6.png',
    'assets/images/pic7.png',
    'assets/images/pic8.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 0, 10),
            child: SizedBox(
              height: 201,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.name,style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
                        SizedBox(height: 5,),
                  SizedBox(
                    height:165,
                    child: ListView.builder(
                      itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            height: 161,
                            width: 100,
                            child: Image.asset(imglist[index]),
                          )),
                      itemCount: 7,
                      scrollDirection: Axis.horizontal,
                    ),
                  )
                ],
              ),
            ),
          );
  }
}