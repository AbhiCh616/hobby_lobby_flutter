import 'package:flutter/material.dart';
import 'package:hobby_lobby_flutter/animations/FadeAnimation.dart';
import 'package:hobby_lobby_flutter/components/authentication/logic/functions.dart';
import 'package:hobby_lobby_flutter/components/feed/feed.dart';
import 'package:hobby_lobby_flutter/components/forgot_password/screens/ForgotPassword.dart';

class LoginScreen extends StatefulWidget {
  final String screenType;

  LoginScreen(this.screenType);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool showPassword = false;

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 'Log In / Sign Up' text
                Text(
                  this.widget.screenType,
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  // Form
                  child: Container(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    constraints: BoxConstraints(maxWidth: 500),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // 'Your Email' Text
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: FadeAnimation(
                            delay: 1,
                            child: Text(
                              'YOUR EMAIL',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        // Email Text Field
                        FadeAnimation(
                          delay: 1,
                          startY: 20,
                          child: TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey[100],
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
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
                        // 'Your Password' Text
                        Padding(
                          padding: const EdgeInsets.only(top: 30, bottom: 20),
                          child: FadeAnimation(
                            delay: 1,
                            child: Text(
                              'YOUR PASSWORD',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        // Password Text Field
                        FadeAnimation(
                          delay: 1,
                          startY: 20,
                          child: TextFormField(
                            controller: passwordController,
                            obscureText: !showPassword,
                            enableSuggestions: false,
                            autocorrect: false,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[100],
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 20),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      showPassword = !showPassword;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Icon(showPassword
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                  ),
                                )),
                          ),
                        ),
                        // Login/Signup button
                        SizedBox(
                          width: double.maxFinite,
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 50.0, bottom: 20.0),
                            child: Hero(
                              tag: this.widget.screenType,
                              child: TextButton(
                                onPressed: () async {
                                  // If on sign up page: create user
                                  if (this.widget.screenType == 'SIGN UP') {
                                    await createUser(emailController.text,
                                        passwordController.text, 'abbacdg');
                                  }
                                  // If on log in page: login user
                                  else if (this.widget.screenType == 'LOG IN') {
                                    await logIn(emailController.text,
                                        passwordController.text);
                                  }
                                  // If user is logged in: go to feed
                                  var goToNextPage = await isLoggedIn();
                                  if (goToNextPage) {
                                    Navigator.pushReplacement(
                                      context,
                                      PageRouteBuilder(
                                        transitionDuration:
                                            Duration(seconds: 2),
                                        pageBuilder: (_, __, ___) => Feed(),
                                      ),
                                    );
                                  }
                                },
                                child: Text(
                                  this.widget.screenType,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  padding: EdgeInsets.symmetric(vertical: 20),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Forgot Password button
                        Align(
                          alignment: Alignment.topCenter,
                          child: FadeAnimation(
                            delay: 2,
                            child: TextButton(
                              onPressed: () => {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    transitionDuration: Duration(seconds: 2),
                                    pageBuilder: (_, __, ___) =>
                                        ForgotPassword(),
                                  ),
                                )
                              },
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                FadeAnimation(
                  delay: 2,
                  child: Row(
                    children: [
                      // 'Don't have an account?' Text
                      Text(
                        (() {
                          if (this.widget.screenType == 'LOG IN') {
                            return 'Don\'t have an account?  ';
                          }
                          return 'Already have an account?  ';
                        })(),
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Take to 'Login or Signup' page button
                      TextButton(
                        onPressed: () => {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              transitionDuration: Duration(seconds: 2),
                              pageBuilder: (_, __, ___) => LoginScreen(() {
                                if (this.widget.screenType == 'LOG IN')
                                  return 'SIGN UP';
                                return 'LOG IN';
                              }()),
                            ),
                          )
                        },
                        child: Text(
                          (() {
                            if (this.widget.screenType == 'LOG IN') {
                              return "Sign Up";
                            }
                            return "Log In";
                          })(),
                          style: TextStyle(
                            fontSize: 15,
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
