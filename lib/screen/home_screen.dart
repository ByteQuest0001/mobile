import "package:bytequest/helper/global.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  @override
  Widget build(BuildContext context) {
    // Initializing device size
    mq = MediaQuery.sizeOf(context);

    return Scaffold(
        backgroundColor: const Color(0xFF1A0047),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // For some spacing
              SizedBox(
                height: mq.height * .09,
              ),

              Center(
                child: Image.asset(
                  'assets/images/icon.png',
                  height: mq.height * .3,
                ),
              ),
              // For some spacing
              SizedBox(
                height: mq.height * .04,
              ),

              const TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'Username',
                  labelStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),

              // For some spacing
              SizedBox(
                height: mq.height * .04,
              ),

              const TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Colors.grey),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),

              TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot my Password',
                  style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.white),
                ),
              ),

              SizedBox(
                height: mq.height * .05,
              ),

              ElevatedButton(
                onPressed: () {
                  // login
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: Size(mq.width, 50)),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Colors.black),
                ),
              ),

              SizedBox(
                height: mq.height * .05,
              ),

              ElevatedButton(
                onPressed: () {
                  // sign up
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    minimumSize: Size(mq.width, 50)),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ));
  }
}
