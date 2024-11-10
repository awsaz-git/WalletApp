import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:walletapp/pages/landingpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

bool login(String username, String password) {
  print("username: " + username);
  print("password: " + password);

  return true;
}
void signup() {
  print("signup");
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(-12445865),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /** logo **/
          Padding(
            padding: const EdgeInsets.only(top: 100.0, bottom: 10.0),
            child: Image.asset(
              'lib/images/logo.png',
              height: 100,
            ),
          ),
          /** title **/
          const Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 40.0),
            child: Text('CORE', style: TextStyle(
              fontFamily: "SF Pro",
              fontWeight: FontWeight.w300,
              fontSize: 28,
              color: Colors.white,
              letterSpacing: 20,
            ),),
          ),

          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24)
                ),
                boxShadow: [
                  BoxShadow(
                  color: Colors.black.withOpacity(0.135), // Shadow color
                  spreadRadius: 2, // Spread of the shadow
                  blurRadius: 10, // Blur effect
                  offset: const Offset(0, 4), // Shadow position
                  ),
                ]
              ),
              padding: const EdgeInsets.all(34),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /** sub title **/
                  const Padding(
                    padding: EdgeInsets.only(bottom: 50.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('CORE', style: TextStyle(
                            fontFamily: "SF Pro",
                            fontWeight: FontWeight.w900,
                            fontSize: 17,
                            color: Color(-12445865),
                            letterSpacing: 1.75,
                            height: 0.5
                        ),),
                        Text(' OF YOUR FINANCE', style: TextStyle(
                            fontFamily: "SF Pro",
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                            color: Color(-12445865),
                            letterSpacing: 1.75,
                            height: 0.5
                        ),),
                      ],
                    ),
                  ),
                  /** text fields **/
                  //username
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50.0),
                    child: TextSelectionTheme(
                      data: TextSelectionThemeData(
                          selectionColor: Colors.grey[400]),
                      child: TextField(
                        cursorHeight: 17.5,
                        cursorWidth: 1,
                        controller: usernameController,
                        decoration: InputDecoration(
                          hintText: "username",
                          hintStyle: const TextStyle(
                            fontFamily: "SF Pro",
                            fontWeight: FontWeight.w300,
                            height: 2
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black, width: 1.5),
                            borderRadius: BorderRadius.circular(22),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.circular(17.5),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red, width: 1.5),
                            borderRadius: BorderRadius.circular(22),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red, width: 2.0),
                            borderRadius: BorderRadius.circular(17.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  //password
                  Padding(
                    padding: const EdgeInsets.only(bottom: 65.0),
                    child: TextSelectionTheme(
                      data: TextSelectionThemeData(
                          selectionColor: Colors.grey[400]),
                      child: TextField(
                        controller: passwordController,
                        cursorColor: Colors.black,
                        cursorHeight: 17.5,
                        cursorWidth: 1,
                        decoration: InputDecoration(
                          hintText: "password",
                          hintStyle: const TextStyle(
                            fontFamily: "SF Pro",
                            fontWeight: FontWeight.w300,
                            height: 2
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black, width: 1.5),
                            borderRadius: BorderRadius.circular(22),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black, width: 2.0),
                            borderRadius: BorderRadius.circular(17.5),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red, width: 1.5),
                            borderRadius: BorderRadius.circular(22),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red, width: 2.0),
                            borderRadius: BorderRadius.circular(17.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                  /** login button **/
                  Padding(
                    padding: const EdgeInsets.only(bottom: 14.0),
                    child: GestureDetector(
                      onTap: () {
                        if(login(usernameController.text, passwordController.text)) {
                          Navigator.pushReplacement(context,
                              CupertinoPageRoute(builder:
                                  (context) =>
                                  LandingPage(username: usernameController.text,))
                          );
                        } else {
                          //do nothing
                        }
                      },
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        width: 300,
                        decoration: BoxDecoration(
                          color: Color(-12445865),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.25),
                              spreadRadius: 4,
                              blurRadius: 10,
                              offset: const Offset(0, 4),
                            ),
                          ]
                        ),
                        child: const Center(
                          child: Text('log in', style: TextStyle(
                            fontFamily: "SF Pro",
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  /** signup button**/
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('don\'t have an account?', style: TextStyle(
                        fontFamily: "SF Pro",
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Colors.grey[600],
                      ),
                      ),
                      const SizedBox(width: 7.5),
                      GestureDetector(
                        onTap: () {
                          signup();
                        },
                        child: const Text('Sign up', style: TextStyle(
                          fontFamily: "SF Pro",
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(-12445865),
                        ),
                        ),
                      )
                    ]
                  ),
                  const SizedBox(height: 135),
                  /** copyright text */
                  Text('copyright © 2024 CORE', style: TextStyle(
                    fontFamily: "SF Pro",
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
