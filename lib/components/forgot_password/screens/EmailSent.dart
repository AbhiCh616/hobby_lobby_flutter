import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hobby_lobby_flutter/components/forgot_password/animated_illustrations/EmailWithDoc.dart';

class EmailSent extends StatelessWidget {
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
                Column(
                  children: [
                    Text(
                      'Email Sent',
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
                        'Please check your email account for password reset link.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height / 5,
                        maxWidth:
                            1.0677716 * MediaQuery.of(context).size.height / 5),
                    child: LayoutBuilder(builder: (context, constraints) {
                      return Hero(
                        tag: 'email_icon',
                        child: EmailWithDoc(
                          parentHeight: constraints.maxHeight,
                          parentWidth: constraints.maxWidth,
                          showWithDoc: true,
                        ),
                      );
                    }),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Didn\'t receive the mail?',
                      style: TextStyle(fontSize: 15),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Resend',
                          style: TextStyle(fontSize: 15),
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
