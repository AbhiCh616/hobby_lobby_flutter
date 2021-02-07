import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hobby_lobby_flutter/animations/FadeAnimation.dart';
import 'package:hobby_lobby_flutter/components/forgot_password/animated_illustrations/EmailWithDoc.dart';
import 'package:hobby_lobby_flutter/components/forgot_password/animated_illustrations/WomanLockIllustration.dart';
import 'package:hobby_lobby_flutter/components/forgot_password/screens/EnterEmail.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(40),
            constraints: BoxConstraints(
                minWidth: double.infinity,
                minHeight: MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top,
                maxHeight: double.infinity),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FadeAnimation(delay: 1, child: ForgotPasswordMessage()),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Column(
                    children: [
                      FadeAnimation(
                        delay: 5,
                        startY: 10,
                        child: EmailResetWidget(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: FadeAnimation(
                          delay: 4.5,
                          startY: 10,
                          child: SMSResetWidget(),
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

class ForgotPasswordMessage extends StatelessWidget {
  const ForgotPasswordMessage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height / 3 + 30,
                maxWidth:
                    (MediaQuery.of(context).size.height / 3 + 30) * 0.84963),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return WomanLockIllustration(
                    parentHeight: constraints.maxHeight,
                    parentWidth: constraints.maxWidth);
              },
            )),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Text(
            'Forgot Password?',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            'Don\'t worry, it happens to all of us! We are here to help you change it.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
            ),
          ),
        ),
      ],
    );
  }
}

class EmailResetWidget extends StatelessWidget {
  const EmailResetWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      constraints: BoxConstraints(maxWidth: 400),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () => Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: Duration(seconds: 2),
              pageBuilder: (_, __, ___) => EnterEmail(),
            ),
          ),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: SizedBox(
                      height: 40,
                      width: 1.0677716 * 40,
                      child: EmailWithDoc(
                        parentHeight: 40,
                        parentWidth: 1.0677716 * 40,
                        showWithDoc: false,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Via Email',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10),
                          child:
                              Text('We will send a reset link to your email.'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class SMSResetWidget extends StatelessWidget {
  const SMSResetWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      constraints: BoxConstraints(maxWidth: 400),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Image.asset(
                    'assets/icons/Message Icon.png',
                    height: 40,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Via SMS',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child:
                            Text('We will send an OTP to your phone number.'),
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
