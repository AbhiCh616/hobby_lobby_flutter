import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hobby_lobby_flutter/animations/FadeAnimation.dart';
import 'package:hobby_lobby_flutter/components/authentication/TwoPeopleSeatingIllustration.dart';

class BootScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 40, top: 60),
                  child: FadeAnimation(
                    delay: 1,
                    startX: 0.0,
                    startY: 50.0,
                    child: Text(
                      'HELLO',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 100),
                child: SizedBox(
                    width: 350,
                    height: 320,
                    child: TwoPeopleSeatingIllustration()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
