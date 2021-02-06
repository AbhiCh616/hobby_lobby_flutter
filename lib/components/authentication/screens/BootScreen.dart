import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hobby_lobby_flutter/animations/FadeAnimation.dart';
import 'package:hobby_lobby_flutter/components/authentication/screens/AuthenticationScreen.dart';
import 'package:hobby_lobby_flutter/components/authentication/animated_illustrations/TwoPeopleSeatingIllustration.dart';

class BootScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: Duration(seconds: 2),
              pageBuilder: (_, __, ___) => AuthenticationScreen(),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
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
                padding: EdgeInsets.only(top: 230),
                child: Hero(
                  tag: 'boot_illustration',
                  child: Container(
                    constraints: BoxConstraints(maxHeight: 320),
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return SizedBox(
                            width: 350,
                            height: 320,
                            child:
                                LayoutBuilder(builder: (context, constraints) {
                              return TwoPeopleSeatingIllustration(
                                height: constraints.maxHeight,
                                width: constraints.maxWidth,
                              );
                            }));
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
