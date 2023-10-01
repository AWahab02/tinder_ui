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
  bool _showContainer = false; // Control whether to show the container

  @override
  void initState() {
    super.initState();

    // Trigger the slide-in animation after a delay (you can use any trigger mechanism)
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _showContainer = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 51, 51, 51),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 72),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  "We're Engaged!",
                  style: TextStyle(
                      fontFamily: 'Rougescript',
                      fontSize: 72,
                      color: Colors.white),
                )),
            SizedBox(height: 20),
            Text(
              "You and Ashen have liked each other",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w200),
            ),
            SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 400), // Animation duration
                  curve: Curves.easeInOut, // Animation curve
                  transform: Matrix4.translationValues(
                    _showContainer ? 0.0 : 500.0, // Slide in from the right
                    0.0,
                    0.0,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 72,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 400), // Animation duration
                  curve: Curves.easeInOut, // Animation curve
                  transform: Matrix4.translationValues(
                    _showContainer ? 0.0 : -500.0, // Slide in from the right
                    0.0,
                    0.0,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 72,
                  ),
                )
              ],
            ),
            SizedBox(height: 120),
            AnimatedContainer(
              duration: Duration(milliseconds: 500), // Animation duration
              curve: Curves.easeInOut, // Animation curve
              transform: Matrix4.translationValues(
                _showContainer ? 0.0 : 500.0, // Slide in from the right
                0.0,
                0.0,
              ),
              child: Container(
                width: 300,
                height: 60,
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
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24),
            AnimatedContainer(
              duration: Duration(milliseconds: 500), // Animation duration
              curve: Curves.easeInOut, // Animation curve
              transform: Matrix4.translationValues(
                _showContainer ? 0.0 : -500.0, // Slide in from the right
                0.0,
                0.0,
              ),
              child: Container(
                width: 300,
                height: 60,
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
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                  ],
                ),
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
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Montserrat'),
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
