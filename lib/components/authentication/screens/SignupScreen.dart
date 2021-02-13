import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hobby_lobby_flutter/components/authentication/logic/validators.dart';
import 'package:hobby_lobby_flutter/components/authentication/screens/LoginScreen.dart';
import 'package:hobby_lobby_flutter/components/authentication/screens/PasswordScreen.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final emailController = TextEditingController();
  final usernameController = TextEditingController();

  bool isEmailCorrect = false;
  bool isUsernameCorrect = false;
  bool isButtonEnabled = false;

  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    emailController.addListener(validate);
    usernameController.addListener(validate);
  }

  @override
  void dispose() {
    emailController.dispose();
    usernameController.dispose();
    super.dispose();
  }

  goToLogIn() {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => LoginScreen(),
      ),
    );
  }

  validate() {
    if (isEmailCorrect != validateEmail(emailController.text)) {
      setState(() {
        isEmailCorrect = !isEmailCorrect;
      });
    }

    if (isUsernameCorrect != validateUsername(usernameController.text)) {
      setState(() {
        isUsernameCorrect = !isUsernameCorrect;
      });
    }

    setState(() {
      isButtonEnabled = isEmailCorrect && isUsernameCorrect;
    });
  }

  goToPasswordScreen() {
    if (isEmailCorrect && isUsernameCorrect) {
      Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (_, __, ___) =>
              PasswordScreen(emailController.text, usernameController.text),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              // Contents should expand entire screen at minimum
              minHeight: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top,
            ),
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Heading ('Sign up')
                  Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Sign up form
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 500),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Heading of Email field ('Your Email')
                            Text(
                              'YOUR EMAIL',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // Email field
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 30),
                              child: TextFormField(
                                controller: emailController,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey[100],
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  suffixIcon: isEmailCorrect
                                      ? Icon(
                                          Icons.done,
                                          color: Colors.green,
                                        )
                                      : null,
                                ),
                              ),
                            ),
                            // Heading of Username field ('Create Unique Username')
                            Text(
                              'CREATE UNIQUE USERNAME',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // Username field
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 50),
                              child: TextFormField(
                                controller: usernameController,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey[100],
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  suffixIcon: isUsernameCorrect
                                      ? Icon(
                                          Icons.done,
                                          color: Colors.green,
                                        )
                                      : null,
                                ),
                              ),
                            ),
                            // Sign up button
                            SizedBox(
                              width: double.maxFinite,
                              child: TextButton(
                                onPressed:
                                    isButtonEnabled ? goToPasswordScreen : null,
                                child: Text(
                                  'SIGN UP',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                                style: TextButton.styleFrom(
                                    backgroundColor: isButtonEnabled
                                        ? Colors.green
                                        : Colors.grey,
                                    padding: EdgeInsets.symmetric(vertical: 20),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      // 'Already have an account' text
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Go to login page button
                      TextButton(
                          onPressed: goToLogIn,
                          child: Text(
                            'Log In',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
