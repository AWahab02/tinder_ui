import 'package:flutter/material.dart';
import 'package:flutter_application_1/itsamatch.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

bool swiped = false;

class MainPage extends StatefulWidget {
  MainPage({
    super.key,
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static double containerOpacity = 0; // Initialize opacity

  @override
  void initState() {
    super.initState();
    // You can initialize variables or perform other setup here
  }

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
        Positioned(
          left: 16, // Adjust the right position as needed
          top: 100, // Adjust the top position as needed
          child: Opacity(
            opacity: containerOpacity,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green),
                color: Colors
                    .transparent, // You can change the background color as needed
                borderRadius: BorderRadius.circular(
                    8.0), // You can adjust the corner radius
              ),
              padding:
                  EdgeInsets.all(8.0), // You can adjust the padding as needed
              child: Text(
                'I DO!',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
          ),
        ),
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
          ),
        ),
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

  @override
  Widget build(BuildContext context) {
    double opacity = 1.0;

    void updateOpacity(double delta) {
      setState(() {
        containerOpacity = 1.0 - delta;
      });
    }

    bool _onSwipe(
        int previousIndex, int? currentIndex, CardSwiperDirection direction) {
      if (direction == CardSwiperDirection.right) {
        Navigator.of(context).push(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              return itsaMatch();
            },
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              const begin = 0.0;
              const end = 2.0;
              var tween = Tween<double>(begin: begin, end: end);
              var fadeAnimation = animation.drive(tween);

              return FadeTransition(
                opacity: fadeAnimation,
                child: child,
              );
            },
          ),
        );
        return true;
      }
      return false;
    }

    var phoneheight = MediaQuery.of(context).size.height;
    var phonewidth = MediaQuery.of(context).size.width;

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
                      (context, index, percentThresholdX, percentThresholdY) {
                    var direction1;

                    // Update the containerOpacity based on swipe progress
                    if (percentThresholdX > 0) {
                      containerOpacity =
                          (percentThresholdX.abs() / 1000).clamp(0.0, 1.0);
                    }

                    if (percentThresholdX < 0) containerOpacity = 0;

                    // print(containerOpacity);
                    return Stack(
                      alignment: Alignment
                          .bottomLeft, // Position the text in the bottom-left corner
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
                        Positioned(
                          left: 0, // Adjust the right position as needed
                          top: 120, // Adjust the top position as needed
                          child: Opacity(
                            opacity: containerOpacity,
                            child: Transform.rotate(
                              angle: -3.14 / 3.75,
                              child: Container(
                                height: 80,
                                width: 160,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 8.0,
                                      color: Color.fromARGB(255, 6, 255, 14)),
                                  color: Colors
                                      .transparent, // You can change the background color as needed
                                  borderRadius: BorderRadius.circular(
                                      8.0), // You can adjust the corner radius
                                ),
                                padding: EdgeInsets.all(
                                    8.0), // You can adjust the padding as needed
                                child: Text(
                                  'I DO!',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 2, 255, 10),
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat',
                                      fontSize: 42),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                    //return cards[index];
                  },
                  cardsCount: 2)),
          Expanded(
            flex: 1,
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
