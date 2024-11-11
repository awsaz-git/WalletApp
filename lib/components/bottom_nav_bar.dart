import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0),
      decoration: BoxDecoration(
        color: Color(-15258534),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25))
      ),
      child: GNav(
        mainAxisAlignment: MainAxisAlignment.center,
        gap: 2,
        color: Color(-1901549400),
          activeColor: Colors.white,
          tabActiveBorder: Border.all(color: Colors.transparent),
          tabBackgroundColor: Colors.transparent,
          onTabChange: (value) => onTabChange!(value),
          tabs: [
            GButton(
              icon: Icons.home,
              text: 'home',
              padding: EdgeInsets.only(top: 12, bottom: 12, right: 20, left: 20),
              borderRadius: BorderRadius.circular(37.5),
              textStyle: TextStyle(
                fontFamily: "SF Pro",
                fontWeight: FontWeight.w300,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            GButton(
              icon: Icons.credit_card,
              text: 'cards',
              padding: EdgeInsets.only(top: 12, bottom: 12, right: 20, left: 20),
              borderRadius: BorderRadius.circular(37.5),
              textStyle: TextStyle(
                fontFamily: "SF Pro",
                fontWeight: FontWeight.w300,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            GButton(
              icon: Icons.bar_chart,
              text: 'transactions',
              padding: EdgeInsets.only(top: 12, bottom: 12, right: 20, left: 20),
              borderRadius: BorderRadius.circular(37.5),
              textStyle: TextStyle(
                fontFamily: "SF Pro",
                fontWeight: FontWeight.w300,
                fontSize: 18,
                color: Colors.white,
              ),
            )
          ]
      )
    );
  }
}
