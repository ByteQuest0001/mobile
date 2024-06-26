import 'package:bytequest/screen/achievements_screen.dart';
import 'package:bytequest/screen/user_profile_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF1A0047),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'ByteBattle',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        ),
                      )
                    ],
                  ),
                ),

                // Spacing
                const SizedBox(
                  height: 56.0,
                ),

                // User Profile
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const UserProfileScreen(),
                              ),
                            );
                          },
                          child: Image.asset(
                              'assets/images/user-profile-icon.png'),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const Text(
                          'User Profile',
                          style: TextStyle(color: Colors.white, fontSize: 30.0),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ],
                ),

                // Achievements
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const AchievementsScreen(),
                              ),
                            );
                          },
                          child: Image.asset(
                              'assets/images/achievements-icon.png'),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const Text(
                          'Achievements',
                          style: TextStyle(color: Colors.white, fontSize: 30.0),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
