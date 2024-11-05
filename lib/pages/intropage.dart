import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

void login(String username, String password) {
  print("username: " + username);
  print("password: " + password);
}
void signup() {
  print("signup");
}

class _IntroPageState extends State<IntroPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(-14737633),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /** logo **/
          Image.asset(
            'lib/images/logo.png',
            scale: 2.5,
            height: 275,
          ),
          /** title **/
          const Text('CORE', style: TextStyle(
            fontFamily: "SF Pro",
            fontWeight: FontWeight.w300,
            fontSize: 28,
            color: Colors.white,
            letterSpacing: 20,
            height: -3.6
          ),),
          const SizedBox(height: 25),

          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
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
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('CORE', style: TextStyle(
                          fontFamily: "SF Pro",
                          fontWeight: FontWeight.w900,
                          fontSize: 17,
                          color: Colors.black,
                          letterSpacing: 1.75,
                          height: 0.5
                      ),),
                      Text(' OF YOUR FINANCE', style: TextStyle(
                          fontFamily: "SF Pro",
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: Colors.black,
                          letterSpacing: 1.75,
                          height: 0.5
                      ),),
                    ],
                  ),

                  const SizedBox(height: 50,),

                  /** text fields **/
                  //username
                  TextSelectionTheme(
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
                          borderSide: BorderSide(color: Colors.black, width: 1.5),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2.0),
                          borderRadius: BorderRadius.circular(17.5),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 1.5),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2.0),
                          borderRadius: BorderRadius.circular(17.5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50,),
                  //password
                  TextSelectionTheme(
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
                          borderSide: BorderSide(color: Colors.black, width: 1.5),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 2.0),
                          borderRadius: BorderRadius.circular(17.5),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 1.5),
                          borderRadius: BorderRadius.circular(22),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2.0),
                          borderRadius: BorderRadius.circular(17.5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 65,),
                  /** login button **/
                  GestureDetector(
                    onTap: () {
                      login(usernameController.text, passwordController.text);
                    },
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color(-14737633),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.135), // Shadow color
                            spreadRadius: 2, // Spread of the shadow
                            blurRadius: 10, // Blur effect
                            offset: const Offset(0, 4), // Shadow position
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
                  const SizedBox(height: 14),
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
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color(-14737633),
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
