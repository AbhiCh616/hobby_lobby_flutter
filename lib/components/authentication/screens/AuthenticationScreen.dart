import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hobby_lobby_flutter/animations/FadeAnimation.dart';
import 'package:hobby_lobby_flutter/components/authentication/screens/LoginScreen.dart';
import 'package:hobby_lobby_flutter/components/authentication/animated_illustrations/TwoPeopleSeating.dart';

class AuthenticationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: double.infinity,
                minHeight: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top,
                maxHeight: double.infinity),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 40),
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
                Column(
                  children: [
                    Hero(
                      tag: 'boot_illustration',
                      child: SizedBox(
                        width: (MediaQuery.of(context).size.height / 2.5) *
                            1.149395,
                        height: MediaQuery.of(context).size.height / 2.5,
                        child: LayoutBuilder(builder: (context, constraints) {
                          return TwoPeopleSeating(
                            height: constraints.maxHeight,
                            width: constraints.maxWidth,
                          );
                        }),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
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
                  ],
                ),
                Container(
                  padding:
                      EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 40),
                  constraints: BoxConstraints(maxWidth: 500),
                  child: Column(
                    children: [
                      FadeAnimation(
                        delay: 1.1,
                        startY: 100,
                        child: SizedBox(
                          width: double.maxFinite,
                          child: Hero(
                            tag: 'LOG IN',
                            child: TextButton(
                              onPressed: () => Navigator.push(
                                context,
                                PageRouteBuilder(
                                  transitionDuration: Duration(seconds: 2),
                                  pageBuilder: (_, __, ___) =>
                                      LoginScreen('LOG IN'),
                                ),
                              ),
                              child: Text(
                                'LOG IN',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.green,
                                padding: EdgeInsets.symmetric(vertical: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.maxFinite,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Hero(
                            tag: 'SIGN UP',
                            child: TextButton(
                              onPressed: () => Navigator.push(
                                context,
                                PageRouteBuilder(
                                  transitionDuration: Duration(seconds: 2),
                                  pageBuilder: (_, __, ___) =>
                                      LoginScreen('SIGN UP'),
                                ),
                              ),
                              child: Text(
                                'SIGN UP',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.blue,
                                padding: EdgeInsets.symmetric(vertical: 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
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
          ),
        ),
      ),
    );
  }
}
