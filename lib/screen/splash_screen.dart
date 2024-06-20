import "package:bytequest/helper/global.dart";
import "package:bytequest/screen/home_screen.dart";
import "package:flutter/material.dart";

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // wait for some time on splash & then move to next screen
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    // Initializing device size
    mq = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: const Color(0xFF1A0047),
      body: Center(
        child: Image.asset(
          'assets/images/logo.png',
          height: mq.height,
        ),
      ),
    );
  }
}
