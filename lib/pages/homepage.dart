import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String username;
  const HomePage({super.key, required this.username});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String getUsername() {
    return widget.username;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(-12445865),
      body:  Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 100.0, bottom: 150.0),
            child: Text(
              '1000.0 \$',
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                fontSize: 40,
                letterSpacing: 3,
                color: Colors.white,
              ),),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35)
                  ),
              ),
              padding: const EdgeInsets.all(18.0),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 50.0, bottom: 50.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.build_circle_rounded,
                          color: Colors.grey[400],
                          size: 90,
                          shadows: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.135), // Shadow color
                              spreadRadius: 2, // Spread of the shadow
                              blurRadius: 10, // Blur effect
                              offset: const Offset(0, 4), // Shadow position
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 30.0, right: 30.0),
                          child: Icon(
                            Icons.build_circle_rounded,
                            color: Colors.grey[400],
                            size: 90,
                            shadows: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.135), // Shadow color
                                spreadRadius: 2, // Spread of the shadow
                                blurRadius: 10, // Blur effect
                                offset: const Offset(0, 4), // Shadow position
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.build_circle_rounded,
                          color: Colors.grey[400],
                          size: 90,
                          shadows: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.135), // Shadow color
                              spreadRadius: 2, // Spread of the shadow
                              blurRadius: 10, // Blur effect
                              offset: const Offset(0, 4), // Shadow position
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 400,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.135), // Shadow color
                            spreadRadius: 2, // Spread of the shadow
                            blurRadius: 10, // Blur effect
                            offset: const Offset(0, 4), // Shadow position
                          ),
                        ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 8.0),
                            width: 125,
                            height: 125,
                            decoration: BoxDecoration(
                              color: Colors.grey[800],
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.135),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: const Offset(0, 4),
                                ),
                              ],
                            ),
                          );
                        },
                      )
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}