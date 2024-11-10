import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../pages/loginpage.dart';

class MyDrawer extends StatelessWidget {
  final BuildContext context;
  const MyDrawer({super.key, required this.context});

  void logout(BuildContext context) {
    Navigator.pushReplacement(context,
        CupertinoPageRoute(builder:
            (context) =>
            LoginPage())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(

      backgroundColor: Color(-12445865),
      child: Column(
        children: [
          Expanded(
              flex: 7,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Image.asset(
                      'lib/images/logo.png',
                      height: 85,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, top: 60.0, bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'lib/icons/user.png',
                          height: 25,
                          color: Colors.white,
                        ),
                        SizedBox(width: 12,),
                        Text('my profile', style: TextStyle(
                          fontFamily: "SF Pro",
                          fontWeight: FontWeight.w200,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, top: 10.0, bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'lib/icons/settings.png',
                          height: 25,
                          color: Colors.white,
                        ),
                        SizedBox(width: 12,),
                        Text('settings', style: TextStyle(
                          fontFamily: "SF Pro",
                          fontWeight: FontWeight.w200,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0, top: 10.0, bottom: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'lib/icons/question.png',
                          height: 25,
                          color: Colors.white,
                        ),
                        SizedBox(width: 12,),
                        Text('help center', style: TextStyle(
                          fontFamily: "SF Pro",
                          fontWeight: FontWeight.w200,
                          fontSize: 22,
                          color: Colors.white,
                        ),
                        )
                      ],
                    ),
                  )
                ],
              )
          ),
          Expanded(
              flex: 1,
              child: GestureDetector(

                onTap: () {
                  logout(this.context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 50.0, top: 10.0, bottom: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'lib/icons/logout.png',
                        height: 25,
                        color: Colors.white,
                      ),
                      SizedBox(width: 12,),
                      Text('log out', style: TextStyle(
                        fontFamily: "SF Pro",
                        fontWeight: FontWeight.w200,
                        fontSize: 22,
                        color: Colors.white,
                      ),
                      )
                    ],
                  ),
                ),
              )
          )
        ],
      ),
    );
  }
}
