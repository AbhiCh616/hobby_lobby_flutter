import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hobby_lobby_flutter/animations/FadeAnimation.dart';
import 'package:hobby_lobby_flutter/components/MyFlatButton.dart';
import 'package:hobby_lobby_flutter/components/authentication/LoginScreen.dart';
import 'package:hobby_lobby_flutter/components/authentication/TwoPeopleSeating.dart';

class AuthenticationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 40, top: 40),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'HELLO',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60),
              child: Hero(
                tag: 'boot_illustration',
                child: SizedBox(
                    width: 350, height: 320, child: TwoPeopleSeating()),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: FadeAnimation(
                delay: 3,
                child: Text(
                  'Find people who share your interests.',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: FadeAnimation(
                delay: 1.1,
                startY: 100,
                child: Hero(
                  tag: 'log_in_button',
                  child: MyFlatButton(
                    text: 'LOG IN',
                    fontSize: 16,
                    horizontalPadding: 130,
                    verticalPadding: 20,
                    textColor: Colors.white,
                    backgroundColor: Colors.green,
                    borderRadius: 40,
                    onClick: () => Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration: Duration(seconds: 2),
                        pageBuilder: (_, __, ___) => LoginScreen(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: FadeAnimation(
                delay: 1.2,
                startY: 100,
                child: MyFlatButton(
                  text: 'SIGN UP',
                  fontSize: 16,
                  horizontalPadding: 130,
                  verticalPadding: 20,
                  textColor: Colors.white,
                  backgroundColor: Colors.blue,
                  borderRadius: 40,
                  onClick: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
