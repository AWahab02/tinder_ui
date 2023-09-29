import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class itsaMatch extends StatefulWidget {
  const itsaMatch({super.key});

  @override
  State<itsaMatch> createState() => _itsaMatchState();
}

class _itsaMatchState extends State<itsaMatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 51, 51, 51),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 124),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/tindertext.png")),
            // Text(
            //   "It's a Match!",
            //   style: TextStyle(fontSize: 64, color: Colors.white),
            // ),
            SizedBox(height: 20),
            Text(
              "You and <name> have liked each other",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 72,
                ),
                SizedBox(
                  width: 20,
                ),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 72,
                )
              ],
            ),
            SizedBox(height: 120),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.white, width: 1.5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    FontAwesomeIcons.solidComment,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      "Send a Message",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Container(
              width: 300,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.white, width: 1.5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    FontAwesomeIcons.imagePortrait,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      "Keep Playing",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Container(
              width: 300,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    FontAwesomeIcons.arrowUpFromBracket,
                    color: Colors.white,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Text(
                      "Tell your friends",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
