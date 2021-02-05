import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hobby_lobby_flutter/animations/FadeAnimation.dart';
import 'package:hobby_lobby_flutter/components/authentication/LoginScreen.dart';
import 'package:hobby_lobby_flutter/components/authentication/TwoPeopleSeating.dart';

class AuthenticationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
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
            Hero(
              tag: 'boot_illustration',
              child: SizedBox(
                width: 350,
                height: 320,
                child: TwoPeopleSeating(),
              ),
            ),
            FadeAnimation(
              delay: 3,
              child: Text(
                'Find people who share your interests.',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 40, right: 40, bottom: 40),
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
    );
  }
}
