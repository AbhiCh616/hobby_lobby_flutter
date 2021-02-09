import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hobby_lobby_flutter/components/authentication/screens/SignupScreen.dart';
import 'package:hobby_lobby_flutter/components/forgot_password/screens/ForgotPassword.dart';

class LoginScreen extends StatefulWidget {
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
    passwordController.dispose();
    super.dispose();
  }

  changePasswordVisibility() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  goToSignUp() {
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => SignupScreen(),
      ),
    );
  }

  goToForgotPasswordScreen() {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => ForgotPassword(),
      ),
    );
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
                    'LOG IN',
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
                                ),
                              ),
                            ),
                            // Heading of Password field ('Your Password')
                            Text(
                              'YOUR PASSWORD',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // Password field
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 50),
                              child: TextFormField(
                                controller: passwordController,
                                obscureText: !showPassword,
                                enableSuggestions: false,
                                autocorrect: false,
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
                                    suffixIcon: GestureDetector(
                                      onTap: changePasswordVisibility,
                                      child: Icon(showPassword
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                    )),
                              ),
                            ),
                            // Sign up button
                            SizedBox(
                              width: double.maxFinite,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'LOG IN',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    padding: EdgeInsets.symmetric(vertical: 20),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                            ),
                            // Forgot Password
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: TextButton(
                                  onPressed: goToForgotPasswordScreen,
                                  child: Text(
                                    'Forgot Password?',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
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
                        'Dont\'t have an account?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Go to login page button
                      TextButton(
                          onPressed: goToSignUp,
                          child: Text(
                            'Sign Up',
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
