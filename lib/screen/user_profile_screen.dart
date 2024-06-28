import 'package:bytequest/helper/global.dart';
import 'package:bytequest/screen/home_screen.dart';
import 'package:flutter/material.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  // Add a TextEditingController for password

  @override
  Widget build(BuildContext context) {
    // Initializing device size
    mq = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: const Color(0xFF1A0047),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: mq.height * .05,
              ),
              Image.asset('assets/images/user.png'),
              SizedBox(
                height: mq.height * .05,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'User',
                    style: TextStyle(color: Colors.white, fontSize: 26.0),
                  ),
                ],
              ),
              SizedBox(
                height: mq.height * .05,
              ),
              const Text(
                'E-mail',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              Container(
                width: 300.0,
                color: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                child: const Center(
                  child: Text(
                    'user@email.com',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: mq.height * .05,
              ),
              const Text(
                'Password',
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              Container(
                width: 300.0,
                color: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                child: const Center(
                  child: Text(
                    '********',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: mq.height * .05,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(),
                child: const Text(
                  'Edit Profile',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
