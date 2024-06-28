import 'package:bytequest/helper/global.dart';
import 'package:bytequest/screen/user_profile_screen.dart';
import 'package:flutter/material.dart';

class EditUserScreen extends StatefulWidget {
  const EditUserScreen({super.key});

  @override
  State<EditUserScreen> createState() => _EditUserScreenState();
}

class _EditUserScreenState extends State<EditUserScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A0047),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
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
                height: mq.height * .05,
              ),

              // name input
              const TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Enter New Name',
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
                    hintText: 'Enter New Username',
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
                    hintText: 'Enter New E-mail',
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
                    hintText: 'Enter New Password',
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
                    hintText: 'Confirm New Password',
                    hintStyle: TextStyle(color: Colors.grey),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    )),
                style: TextStyle(color: Colors.white),
              ),

              // For some spacing
              SizedBox(
                height: mq.height * .05,
              ),

              // signup button
              ElevatedButton(
                onPressed: () {
                  // login
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserProfileScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    minimumSize: Size(mq.width, 50)),
                child: const Text(
                  'Save',
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
