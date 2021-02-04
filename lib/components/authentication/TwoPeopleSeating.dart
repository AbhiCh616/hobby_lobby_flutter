import 'package:flutter/cupertino.dart';

import '../FadeImage.dart';

class TwoPeopleSeating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FadeImage(
            top: 185,
            height: 76,
            width: 81,
            fadeDelay: 0,
            fadeOpacity: 1,
            image: 'assets/illustrations/two_people_seating/Leaf_Lower.png'),
        FadeImage(
            left: 40,
            top: 157,
            height: 104,
            width: 45,
            fadeDelay: 0,
            fadeOpacity: 1,
            image: 'assets/illustrations/two_people_seating/Leaf_Upper.png'),
        FadeImage(
            left: 43,
            top: 187,
            height: 90,
            width: 95,
            fadeDelay: 0,
            fadeOpacity: 1,
            image: 'assets/illustrations/two_people_seating/Seat.png'),
        FadeImage(
            left: 88,
            top: 0,
            height: 286,
            width: 244,
            fadeDelay: 0,
            fadeOpacity: 1,
            image: 'assets/illustrations/two_people_seating/Green_Bubble.png'),
        FadeImage(
            left: 279,
            top: 181,
            height: 84,
            width: 67,
            fadeDelay: 0,
            fadeOpacity: 1,
            image: 'assets/illustrations/two_people_seating/Pink_Bubble.png'),
        FadeImage(
            left: 44,
            top: 59,
            height: 217,
            width: 188,
            fadeDelay: 0,
            fadeOpacity: 1,
            image: 'assets/illustrations/two_people_seating/Boy.png'),
        FadeImage(
            left: 242,
            top: 212,
            height: 81,
            width: 96,
            fadeDelay: 0,
            fadeOpacity: 1,
            image: 'assets/illustrations/two_people_seating/Seat.png'),
        FadeImage(
            left: 162,
            top: 75,
            height: 225,
            width: 174,
            fadeDelay: 0,
            fadeOpacity: 1,
            image: 'assets/illustrations/two_people_seating/Girl.png'),
      ],
    );
  }
}
