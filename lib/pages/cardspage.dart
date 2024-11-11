import 'package:flutter/material.dart';

class CardsPage extends StatefulWidget {
  final String username;
  const CardsPage({super.key, required this.username});

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  String getUsername() {
    return widget.username;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(-15258534),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35)
                  ),
                ),
                padding: const EdgeInsets.all(10.0),

                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0, bottom: 20.0),
                      child: Center(
                        child: Stack(
                          children: [
                            Image.asset(
                              'lib/images/mastercard.png',
                              height: 210,
                            ),
                            const Positioned(
                              top: 160,
                              left: 20,
                              child: Text(
                                '1234 5678 9012 3456',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: "Poppins",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 120,
                              left: 20,
                              child: Text(
                                'John Doe',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Poppins",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 120,
                              left: 290,
                              child: Text(
                                '12/25',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Poppins",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 40.0, bottom: 20.0),
                        child: Stack(
                          children: [
                            Image.asset(
                              'lib/images/visa.png',
                              height: 210,
                            ),
                            const Positioned(
                              top: 160,
                              left: 20,
                              child: Text(
                                '6543 2109 8765 4321',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontFamily: "Poppins",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 120,
                              left: 20,
                              child: Text(
                                'John Doe',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Poppins",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 120,
                              left: 290,
                              child: Text(
                                '06/26',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: "Poppins",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
