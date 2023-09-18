import 'package:flutter/material.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({super.key});

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,title: Text("Smart Downloads",style: TextStyle(color: Colors.white,fontSize: 15),),),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Introducing Downloads For You",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text("Lorem ipsum shbjn sghs sjjs bs gvds dnsd .bvsd dshss,sdhbghsvhh ,sasa dsfdf, sgd g,sdsffsdf f, sfdsfd, fsdf sfsfsfds sdfsf,adadds dassd asdads.", style: TextStyle(color: Colors.white)),
              SizedBox(height: 15,),
              Center(child: CircleAvatar(radius: 88.5,backgroundColor: Colors.grey[600],)),
              SizedBox(height: 15,),
              ElevatedButton(onPressed: (){}, child: Container(width: double.infinity,height: 41,child: Center(child: Text("SETUP")),),),
              SizedBox(height: 30,),
              Center(child: ElevatedButton(onPressed: (){}, style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.grey[600])),child: Container(height: 33,width: 220,child: Center(child: Text("Find Something to Download",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold))),),))
            ],
          ),
        ),
      ),
    );
  }
}