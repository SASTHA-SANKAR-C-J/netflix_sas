import 'package:flutter/material.dart';
import 'package:flutter_application_splash/global_widgets/scoller/notification.dart';

class ComingSoon extends StatefulWidget {
  const ComingSoon({super.key});

  @override
  State<ComingSoon> createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
            child: Container(
              height: 19,
              width: 125,
              child: Row(
                children: [
                  Image.asset('assets/images/Group 49.png'),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Notifications",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 65,
            color: Color.fromARGB(255, 80, 78, 78),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Row(
                children: [
                  Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Image.asset('assets/images/Rectangle 20.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 5, 0, 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("New Arrival",
                            style: TextStyle(color: Colors.white)),
                        SizedBox(
                          height: 3,
                        ),
                        Text("El Chapo", style: TextStyle(color: Colors.white)),
                        SizedBox(
                          height: 3,
                        ),
                        Text("Nov 6",
                            style: TextStyle(
                                color: Color.fromARGB(255, 153, 149, 149))),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 65,
            color: Color.fromARGB(255, 80, 78, 78),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Row(
                children: [
                  Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Image.asset('assets/images/Rectangle 21.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 5, 0, 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("New Arrival",
                            style: TextStyle(color: Colors.white)),
                        SizedBox(
                          height: 3,
                        ),
                        Text("Peaky Blinders",
                            style: TextStyle(color: Colors.white)),
                        SizedBox(
                          height: 3,
                        ),
                        Text("Nov 6",
                            style: TextStyle(
                                color: Color.fromARGB(255, 153, 149, 149))),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          NotificationWidget(notname: 'Castle & Castle'),
          NotificationWidget(notname: 'Tiny Pretty Things'),
          NotificationWidget(notname: 'Faster'),
        ],
      ),
    );
  }
}
