import 'package:flutter/material.dart';

class StatsPage extends StatefulWidget {
  final String username;
  const StatsPage({super.key, required this.username});

  @override
  State<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  String getUsername() {
    return widget.username;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('stats page')),
      backgroundColor: Colors.grey[300],
    );
  }
}
