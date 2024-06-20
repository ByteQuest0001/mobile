import "package:bytequest/helper/global.dart";
import "package:flutter/material.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // Initializing device size
    mq = MediaQuery.sizeOf(context);

    return const Scaffold(
      backgroundColor: Color(0xFF1A0047),
      body: Center(
        child: Text(
          'Welcome to Home Screen',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
