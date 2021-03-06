import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hobby_lobby_flutter/animations/FadeAnimation.dart';
import 'package:hobby_lobby_flutter/components/authentication/logic/user.dart';
import 'package:hobby_lobby_flutter/components/authentication/screens/AuthenticationScreen.dart';
import 'package:hobby_lobby_flutter/components/authentication/animated_illustrations/TwoPeopleSeatingIllustration.dart';
import 'package:hobby_lobby_flutter/components/feed/feed.dart';

class BootScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () async => {
            if (await isLoggedIn())
              {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    transitionDuration: Duration(seconds: 2),
                    pageBuilder: (_, __, ___) => Feed(),
                  ),
                )
              }
            else
              {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    transitionDuration: Duration(seconds: 2),
                    pageBuilder: (_, __, ___) => AuthenticationScreen(),
                  ),
                )
              }
          },
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 40, top: 40),
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
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height / 8),
                child: Hero(
                  tag: 'boot_illustration',
                  child: SizedBox(
                    width:
                        (MediaQuery.of(context).size.height / 2.5) * 1.149395,
                    height: MediaQuery.of(context).size.height / 2.5,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return TwoPeopleSeatingIllustration(
                          height: constraints.maxHeight,
                          width: constraints.maxWidth,
                        );
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
