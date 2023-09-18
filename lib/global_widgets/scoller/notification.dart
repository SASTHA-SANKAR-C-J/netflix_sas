import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key, required this.notname});
  final String notname;

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 395,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  height: 195,
                  width: double.infinity,
                  child: Image.asset('assets/images/$notname.png'),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.add_alert,
                            color: Colors.white,
                            size: 26,
                          ),
                          Text("Remind Me", style: TextStyle(color: Colors.white))
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.share,
                            color: Colors.white,
                            size: 26,
                          ),
                          Text("Share", style: TextStyle(color: Colors.white))
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                  child: Container(width: double.infinity,
                    height: 117,
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Season 1 Coming December 14", style: TextStyle(color: Colors.white)),
                    Text(notname, style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold)),
                    Text("Lorem ipsum shbjn sghs sjjs bs gvds dnsd .bvsd dshss,sdhbghsvhh ,sasa dsfdf, sgd g,sdsffsdf f, sfdsfd, fsdf sfsfsfds sdfsf,adadds dassd asdads.", style: TextStyle(color: Colors.white)),
                    Text("Steamy . Soapy . Slow Burn . Suspectful . Teen . Mystery", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                  ],),),
                )
              ],
            ),
          );
  }
}