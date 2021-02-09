import 'package:flutter/material.dart';
import 'package:hobby_lobby_flutter/components/authentication/logic/functions.dart';
import 'package:hobby_lobby_flutter/components/authentication/screens/AuthenticationScreen.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: TextButton(
        child: Text('Log Out'),
        onPressed: () {
          logOut();
          Navigator.pushReplacement(
            context,
            PageRouteBuilder(
              transitionDuration: Duration(seconds: 2),
              pageBuilder: (_, __, ___) => AuthenticationScreen(),
            ),
          );
        },
      )),
    );
  }
}
