import 'package:flutter/material.dart';
import 'package:hobby_lobby_flutter/animations/FadeAnimation.dart';

import '../MyFlatButton.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'LOG IN',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                FadeAnimation(
                  delay: 1,
                  child: Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Text(
                      'Your Email',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                FadeAnimation(
                  delay: 1,
                  startY: 20,
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    child: TextField(
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.blue[30],
                        hintText: 'example@domain.com',
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                FadeAnimation(
                  delay: 1,
                  child: Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      'Password',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                FadeAnimation(
                  delay: 1,
                  startY: 20,
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    child: TextField(
                      style: TextStyle(fontSize: 18, color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.blue[30],
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Hero(
                            tag: 'log_in_button',
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Log In',
                                style: TextStyle(fontSize: 16),
                              ),
                              style: TextButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                  vertical: 20,
                                ),
                                backgroundColor: Colors.green,
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      FadeAnimation(
                        delay: 2,
                        child: Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                FadeAnimation(
                  delay: 2,
                  child: Expanded(
                    child: Align(
                      alignment: FractionalOffset.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(top: 60),
                        child: Row(
                          children: [
                            Text(
                              'Don\'t have an account?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
