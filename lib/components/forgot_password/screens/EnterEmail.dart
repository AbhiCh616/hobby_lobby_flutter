import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hobby_lobby_flutter/animations/FadeAnimation.dart';
import 'package:hobby_lobby_flutter/components/forgot_password/animated_illustrations/EmailWithDoc.dart';

import 'EmailSent.dart';

class EnterEmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(40.0),
            constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FadeAnimation(
                  delay: 0.5,
                  child: Column(
                    children: [
                      Text(
                        'Enter Your Email',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'We will send a reset link to your email.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height / 5,
                        maxWidth:
                            1.0677716 * MediaQuery.of(context).size.height / 5),
                    child: FadeAnimation(
                      delay: 0.5,
                      child: LayoutBuilder(builder: (context, constraints) {
                        return Hero(
                          tag: 'email_icon',
                          child: EmailWithDoc(
                            parentHeight: constraints.maxHeight,
                            parentWidth: constraints.maxWidth,
                            showWithDoc: false,
                          ),
                        );
                      }),
                    ),
                  ),
                ),
                Column(
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 400),
                      child: FadeAnimation(
                        delay: 1,
                        startY: 20,
                        child: TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.grey[100],
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(maxWidth: 400, minWidth: 400),
                      padding: const EdgeInsets.only(top: 30),
                      child: FadeAnimation(
                        delay: 0.5,
                        startY: 10,
                        child: TextButton(
                          onPressed: () => Navigator.push(
                              context,
                              PageRouteBuilder(
                                transitionDuration: Duration(seconds: 1),
                                pageBuilder: (_, __, ___) => EmailSent(),
                              )),
                          child: Text(
                            'Send',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.blue,
                              padding: EdgeInsets.symmetric(vertical: 20),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
