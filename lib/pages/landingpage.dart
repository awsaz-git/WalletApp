import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:walletapp/components/bottom_nav_bar.dart';
import 'package:walletapp/pages/loginpage.dart';
import 'package:walletapp/pages/statspage.dart';
import '../components/drawer.dart';
import 'cardspage.dart';
import 'homepage.dart';

class LandingPage extends StatefulWidget {
  final String username;
  const LandingPage({super.key, required this.username});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  String getUsername() {
    return widget.username;
  }

  int selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> get pages => [
    HomePage(username: widget.username),
    CardsPage(username: widget.username),
    StatsPage(username: widget.username)
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(-12445865),
        elevation: 0,
        title: Text(
          "Good evening, " + getUsername() + " 🌙",
          style: const TextStyle(
            fontFamily: "SF Pro",
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        iconTheme: IconThemeData(
            color: Colors.white
        ),
      ),
      endDrawer: MyDrawer(context: context,),
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      backgroundColor: Colors.grey[200],
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 400),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return FadeTransition(opacity: animation, child: child);
        },
        child: pages[selectedIndex],
      ).animate()
    );
  }
}
