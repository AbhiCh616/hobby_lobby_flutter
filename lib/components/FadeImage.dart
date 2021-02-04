import 'package:flutter/cupertino.dart';
import 'package:hobby_lobby_flutter/animations/FadeAnimation.dart';

class FadeImage extends StatelessWidget {
  final double left;
  final double top;
  final double height;
  final double width;
  final double fadeDelay;
  final double fadeX;
  final double fadeY;
  final String image;

  FadeImage(
      {this.left = 0.0,
      this.top = 0.0,
      required this.height,
      required this.width,
      required this.fadeDelay,
      this.fadeX = 0.0,
      this.fadeY = 0.0,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: this.left,
      top: this.top,
      height: this.height,
      width: this.width,
      child: FadeAnimation(
        delay: this.fadeDelay,
        startX: this.fadeX,
        startY: this.fadeY,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(this.image),
            ),
          ),
        ),
      ),
    );
  }
}
