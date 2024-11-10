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
      body: Center(child: Text('cards page')),
      backgroundColor: Colors.grey[300],
    );
  }
}
