import 'package:flutter/cupertino.dart';

import '../../FadeImage.dart';

class TwoPeopleSeating extends StatelessWidget {
  final double height;
  final double width; // Width should be "1.149395 * height"

  TwoPeopleSeating({required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FadeImage(
            top: this.height * 0.613467,
            height: this.height * 0.25355,
            width: this.width * 0.235318,
            fadeDelay: 0,
            fadeOpacity: 1,
            image: 'assets/illustrations/two_people_seating/Leaf_Lower.png'),
        FadeImage(
            left: this.width * 0.1157216,
            top: this.height * 0.521437,
            height: this.height * 0.34509,
            width: this.width * 0.13067,
            fadeDelay: 0,
            fadeOpacity: 1,
            image: 'assets/illustrations/two_people_seating/Leaf_Upper.png'),
        FadeImage(
            left: this.width * 0.123182,
            top: this.height * 0.637596,
            height: this.height * 0.26685,
            width: this.width * 0.275222,
            fadeDelay: 0,
            fadeOpacity: 1,
            image: 'assets/illustrations/two_people_seating/Seat.png'),
        FadeImage(
            left: this.width * 0.254952,
            top: this.height * 0,
            height: this.height * 0.95191,
            width: this.width * 0.706069,
            fadeDelay: 0,
            fadeOpacity: 1,
            image: 'assets/illustrations/two_people_seating/Green_Bubble.png'),
        FadeImage(
            left: this.width * 0.806003,
            top: this.height * 0.603097,
            height: this.height * 0.279447,
            width: this.width * 0.193997,
            fadeDelay: 0,
            fadeOpacity: 1,
            image: 'assets/illustrations/two_people_seating/Pink_Bubble.png'),
        FadeImage(
            left: this.width * 0.128358,
            top: this.height * 0.197188,
            height: this.height * 0.720785,
            width: this.width * 0.544169,
            fadeDelay: 0,
            fadeOpacity: 1,
            image: 'assets/illustrations/two_people_seating/Boy.png'),
        FadeImage(
            left: this.width * 0.69907,
            top: this.height * 0.703935,
            height: this.height * 0.26934,
            width: this.width * 0.27782,
            fadeDelay: 0,
            fadeOpacity: 1,
            image: 'assets/illustrations/two_people_seating/Seat.png'),
        FadeImage(
            left: this.width * 0.469797,
            top: this.height * 0.250565,
            height: this.height * 0.7494,
            width: this.width * 0.50204,
            fadeDelay: 0,
            fadeOpacity: 1,
            image: 'assets/illustrations/two_people_seating/Girl.png'),
      ],
    );
  }
}
