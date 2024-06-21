import 'package:bytequest/helper/global.dart';
import 'package:bytequest/screen/login_screen.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A0047),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/user.png',
                  height: mq.height * .2,
                ),
              ),

              // For some spacing
              SizedBox(
                height: mq.height * .01,
              ),

              // name input
              const TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Full Name',
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    )),
                style: TextStyle(color: Colors.white),
              ),

              // For some spacing
              SizedBox(
                height: mq.height * .03,
              ),

              // username input
              const TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Username',
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    )),
                style: TextStyle(color: Colors.white),
              ),

              // For some spacing
              SizedBox(
                height: mq.height * .03,
              ),

              // email input
              const TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'E-mail',
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    )),
                style: TextStyle(color: Colors.white),
              ),

              // For some spacing
              SizedBox(
                height: mq.height * .03,
              ),

              // password input
              const TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    )),
                style: TextStyle(color: Colors.white),
              ),

              // For some spacing
              SizedBox(
                height: mq.height * .03,
              ),

              // confirm password input
              const TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    )),
                style: TextStyle(color: Colors.white),
              ),

              // For some spacing
              SizedBox(
                height: mq.height * .03,
              ),

              // signup button
              ElevatedButton(
                onPressed: () {
                  // login
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: Size(mq.width, 50)),
                child: const Text(
                  'Signup',
                  style: TextStyle(color: Colors.black),
                ),
              ),

              // For some spacing
              SizedBox(
                height: mq.height * .03,
              ),

              // signup button
              ElevatedButton(
                onPressed: () {
                  // login
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade300,
                    minimumSize: Size(mq.width, 50)),
                child: const Text(
                  'Already have an account? Login',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
