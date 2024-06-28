import 'package:bytequest/model/achievement_model.dart';
import 'package:bytequest/screen/achievements_screen.dart';
import 'package:bytequest/screen/user_profile_screen.dart';
import 'package:flutter/material.dart';

class AchievementDetailScreen extends StatelessWidget {
  final Achievement achievement;

  const AchievementDetailScreen({super.key, required this.achievement});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A0047),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // back button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AchievementsScreen(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.white,
                  ),

                  // user profile icon
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
                      'assets/images/user.png',
                      height: 50,
                    ),
                  ),
                ],
              ),

              // spacing
              const SizedBox(
                height: 30,
              ),

              // achievement description
              Text(
                'Description: ${achievement.description}',
                style: const TextStyle(fontSize: 26, color: Colors.white),
              ),

              // spacing
              const SizedBox(height: 10),

              // date
              Text(
                'Date: ${achievement.date}',
                style: const TextStyle(fontSize: 26, color: Colors.white),
              ),

              // spacing
              const SizedBox(height: 10),

              // situation
              Text(
                'Situation: ${achievement.situation}',
                style: const TextStyle(fontSize: 26, color: Colors.white),
              ),

              // spacing
              const SizedBox(height: 10),

              // category
              Text(
                'Category: ${achievement.category}',
                style: const TextStyle(fontSize: 26, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
