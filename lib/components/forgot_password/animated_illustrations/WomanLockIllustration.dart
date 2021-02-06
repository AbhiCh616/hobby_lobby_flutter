import 'package:flutter/cupertino.dart';
import 'package:hobby_lobby_flutter/components/FadeImage.dart';

class WomanLockIllustration extends StatelessWidget {
  final double parentHeight;
  final double parentWidth; // Width of the parent should be "height * 0.84963"

  WomanLockIllustration(
      {required this.parentHeight, required this.parentWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          FadeImage(
            height: this.parentHeight * 0.68926,
            width: this.parentWidth * 1,
            fadeDelay: 1,
            image: 'assets/illustrations/woman_lock_opening/Ground.png',
            left: 0,
            top: this.parentHeight * 0.310777,
            fadeY: 5,
          ),
          FadeImage(
            left: this.parentWidth * 0.110838,
            top: this.parentHeight * 0.5897484,
            height: this.parentHeight * 0.148592,
            width: this.parentWidth * 0.2191558,
            fadeDelay: 1.4,
            image: 'assets/illustrations/woman_lock_opening/Key.png',
            fadeY: -15,
          ),
          FadeImage(
              left: this.parentWidth * 0.535653894,
              top: this.parentHeight * 0.1,
              height: this.parentHeight * 0.687645512,
              width: this.parentWidth * 0.21194525,
              fadeDelay: 1.8,
              image: 'assets/illustrations/woman_lock_opening/Phone.png',
              fadeX: 20),
          FadeImage(
            left: this.parentWidth * 0.197939,
            top: this.parentHeight * 0.523357,
            height: this.parentHeight * 0.38205,
            width: this.parentWidth * 0.5502664,
            fadeDelay: 2,
            image: 'assets/illustrations/woman_lock_opening/Phone Shadow.png',
          ),
          FadeImage(
            left: this.parentWidth * 0.45069,
            top: this.parentHeight * 0.2217799,
            height: this.parentHeight * 0.6301915,
            width: this.parentWidth * 0.2313116,
            fadeDelay: 3,
            image: 'assets/illustrations/woman_lock_opening/Woman.png',
          ),
          FadeImage(
            left: this.parentWidth * 0.0962894,
            top: this.parentHeight * 0.1260608,
            height: this.parentHeight * 0.3297784,
            width: this.parentWidth * 0.2007785,
            fadeDelay: 3.5,
            image: 'assets/illustrations/woman_lock_opening/Shield.png',
            fadeX: -20,
          ),
        ],
      ),
    );
  }
}
