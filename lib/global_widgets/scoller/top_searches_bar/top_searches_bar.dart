import 'package:flutter/material.dart';

class TopSearchesBar extends StatelessWidget {
  const TopSearchesBar({super.key, required this.searchi});
  final String searchi;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
      child: Container(
        height: 76,
        width: double.infinity,
        decoration: BoxDecoration(color: Color.fromARGB(255, 80, 78, 78)),
        child: Row(
          children: [
            Container(
              height: 76,
              width: MediaQuery.of(context).size.width * 0.4,
              child: Image.asset('assets/images/$searchi.png',fit: BoxFit.fitWidth,),
            ),
            Container(
              height: 76,
              width: MediaQuery.of(context).size.width * 0.58,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Text(
                      searchi,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Icon(
                    Icons.play_circle_outlined,
                    color: Colors.white,
                    size: 28,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
