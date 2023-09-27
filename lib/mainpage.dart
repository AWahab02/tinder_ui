import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/itsamatch.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatelessWidget {
  List<Stack> cards = [
    Stack(
      alignment:
          Alignment.bottomLeft, // Position the text in the bottom-left corner
      children: <Widget>[
        Image.asset(
          'assets/pfp.jpeg', // Replace with the path to your image
          fit: BoxFit.cover, // Adjust the fit to your needs
        ),
        Positioned(
            left: 16, // Adjust the left position as needed
            bottom: 16, // Adjust the bottom position as needed
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      'Ashen ',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 32),
                    ),
                    Text(
                      '24',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 26),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.house_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                    Text(
                      ' Lives in Colombo',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                      size: 16,
                    ),
                    Text(
                      ' less than a kilometre away',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ],
            )),
      ],
    ),
    Stack(
      alignment:
          Alignment.bottomLeft, // Position the text in the bottom-left corner
      children: <Widget>[
        Image.asset(
          'assets/pfp.jpeg', // Replace with the path to your image
          fit: BoxFit.cover, // Adjust the fit to your needs
        ),
        Positioned(
            left: 16, // Adjust the left position as needed
            bottom: 16, // Adjust the bottom position as needed
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      'Ashen ',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 32),
                    ),
                    Text(
                      '24',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 26),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.house_outlined,
                      color: Colors.white,
                      size: 16,
                    ),
                    Text(
                      ' Lives in Colombo',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                      size: 16,
                    ),
                    Text(
                      ' less than a kilometre away',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ],
            )),
      ],
    ),
    // Container(
    //   alignment: Alignment.center,
    //   child: Image(image: AssetImage("assets/pfp.jpeg")),
    // ),
    // Container(
    //   alignment: Alignment.center,
    //   child: const Text('2'),
    //   color: Color.fromARGB(255, 255, 93, 147),
    // ),
  ];

  MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool _onSwipe(
        int previousIndex, int? currentIndex, CardSwiperDirection direction) {
      if (direction == CardSwiperDirection.right) {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => itsaMatch(),
        ));
        return true;
      }
      return false;
    }

    var phoneheight = MediaQuery.of(context).size.height;
    var phonewidth = MediaQuery.of(context).size.width;
    var percentThresholdX = 90;
    var percentThresholdy = 90;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 251, 251),
        elevation: 0,
        leading: Icon(
          FontAwesomeIcons.solidUser,
          color: Colors.grey,
          size: phoneheight * 0.04,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13.0),
            child: Icon(
              FontAwesomeIcons.solidComments,
              color: Colors.grey,
              size: phoneheight * 0.04,
            ),
          )
        ],
        centerTitle: true,
        title: Image(
          image: AssetImage("assets/tinder.png"),
          height: phoneheight * 0.08,
        ),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 3,
              child: CardSwiper(
                  onSwipe: _onSwipe,
                  cardBuilder:
                      (context, index, percentThresholdx, percentThresholdy) =>
                          cards[index],
                  cardsCount: cards.length)),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80, // Outer circle width
                  height: 80, // Outer circle height
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(
                        255, 227, 227, 227), // Outer circle color
                  ),
                  child: Center(
                    child: Container(
                      width: 60, // Inner circle width
                      height: 60, // Inner circle height
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white, // Inner circle color
                      ),
                      child: Center(
                        child: Icon(
                          FontAwesomeIcons.arrowRotateRight,
                          color: Color.fromARGB(255, 255, 185, 86),
                          size: 36,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 110, // Outer circle width
                  height: 110, // Outer circle height
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(
                        255, 227, 227, 227), // Outer circle color
                  ),
                  child: Center(
                    child: Container(
                      width: 80, // Inner circle width
                      height: 80, // Inner circle height
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white, // Inner circle color
                      ),
                      child: Center(
                        child: Icon(
                          Icons.clear,
                          color: Colors.red,
                          size: 50,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 110, // Outer circle width
                  height: 110, // Outer circle height
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(
                        255, 227, 227, 227), // Outer circle color
                  ),
                  child: Center(
                    child: Container(
                      width: 80, // Inner circle width
                      height: 80, // Inner circle height
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white, // Inner circle color
                      ),
                      child: Center(
                        child: Icon(
                          FontAwesomeIcons.solidHeart,
                          color: Colors.green,
                          size: 34,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 80, // Outer circle width
                  height: 80, // Outer circle height
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(
                        255, 227, 227, 227), // Outer circle color
                  ),
                  child: Center(
                    child: Container(
                      width: 60, // Inner circle width
                      height: 60, // Inner circle height
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white, // Inner circle color
                      ),
                      child: Center(
                        child: Icon(
                          Icons.star_outlined,
                          color: Colors.blue,
                          size: 36,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
