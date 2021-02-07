import 'package:flutter/cupertino.dart';
import 'package:hobby_lobby_flutter/components/FadeImage.dart';

class EmailWithDoc extends StatelessWidget {
  final double parentHeight;
  final double parentWidth; // Should be "1.0677716 * height"
  final bool showWithDoc;

  EmailWithDoc(
      {required this.parentHeight,
      required this.parentWidth,
      this.showWithDoc = true});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FadeImage(
          height: this.parentHeight * 0.9853,
          width: this.parentWidth * 0.9995,
          fadeDelay: 0,
          fadeStartOpacity: 1,
          image: 'assets/illustrations/email_with_doc/Mail Back.png',
        ),
        FadeImage(
          left: this.parentWidth * 0.08228187,
          top: this.parentHeight * 0.10542337,
          height: this.parentHeight * 0.6944558,
          width: this.parentWidth * 0.828095,
          fadeDelay: 2,
          fadeY: 30,
          fadeEndOpacity: (() {
            if (showWithDoc) return 1.0;
            return 0.0;
          })(),
          image: 'assets/illustrations/email_with_doc/Paper.png',
        ),
        FadeImage(
          left: this.parentWidth * 0.57,
          top: this.parentHeight * 0.03,
          height: this.parentHeight * 0.2725565,
          width: this.parentWidth * 0.255257,
          fadeDelay: 3.5,
          fadeEndOpacity: (() {
            if (showWithDoc) return 1.0;
            return 0.0;
          })(),
          image: 'assets/illustrations/email_with_doc/Tick.png',
        ),
        FadeImage(
          top: this.parentHeight * 0.47775,
          height: this.parentHeight * 0.51972,
          width: this.parentWidth,
          fadeDelay: 0,
          fadeStartOpacity: 1,
          image: 'assets/illustrations/email_with_doc/Mail Front.png',
        ),
      ],
    );
  }
}
