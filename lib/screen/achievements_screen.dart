import 'package:bytequest/helper/global.dart';
import 'package:bytequest/model/achievement_model.dart';
import 'package:bytequest/screen/achievement_details_screen.dart';
import 'package:bytequest/screen/home_screen.dart';
import 'package:bytequest/screen/user_profile_screen.dart';
import 'package:flutter/material.dart';

class AchievementsScreen extends StatefulWidget {
  const AchievementsScreen({super.key});

  @override
  State<AchievementsScreen> createState() => _AchievementsScreenState();
}

class _AchievementsScreenState extends State<AchievementsScreen> {
  @override
  Widget build(BuildContext context) {
    // Initializing device size
    mq = MediaQuery.sizeOf(context);

    // dummy list
    // final List<String> achievements = [
    //   'Flutter Wizard'
    //   'SpringBoot Specialist',
    //   'PHP Master',
    //   'JavaScript Sorcerer',
    //   'Java Knight'
    //   'Python Enthusiast',
    // ];

    final List<Achievement> achievements = [
      Achievement(
        name: 'Flutter Wizrd',
        description: 'Completed Flutter Mobile App for UniBH Project',
        date: '28/06/2024',
        situation: 'Completed',
        category: 'Academic',
      ),
      Achievement(
        name: 'Springboot Specialist',
        description: 'Completed Springboot Backend for UniBH Project',
        date: '28/06/2024',
        situation: 'Completed',
        category: 'Academic',
      ),
      Achievement(
        name: 'AWS Master - DynamoDB Stance',
        description: 'Completed DynamoDB database for UniBH Project',
        date: '28/06/2024',
        situation: 'Completed',
        category: 'Academic',
      ),
      Achievement(
        name: 'JavaScript Sorcerer',
        description: 'Discovered the deep secrets of JavaScript sorcery',
        date: '14/05/2022',
        situation: 'Ongoing',
        category: 'Academic',
      ),
    ];

    return Scaffold(
      backgroundColor: const Color(0xFF1A0047),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // back button + user icon
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
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
              SizedBox(
                height: mq.height * .05,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Lista de Conquistas',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    ),
                  ),

                  // Add Achievement Icon
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add_circle_outlined),
                    color: Colors.white,
                    iconSize: 35,
                  ),
                ],
              ),

              // Achievements List
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: achievements.length,
                itemBuilder: (context, index) {
                  final achievement = achievements[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AchievementDetailScreen(
                                achievement: achievement),
                          ),
                        );
                      },

                      // achievement display
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // arrow icon
                          const Column(
                            children: [
                              Icon(
                                Icons.arrow_right,
                                color: Colors.white,
                              ),
                            ],
                          ),

                          // achievement name
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  achievement.name,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 24.0,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // edit button
                          Column(
                            children: [
                              IconButton(
                                onPressed: () {
                                  // edit
                                },
                                icon: const Icon(Icons.edit),
                                color: Colors.white,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
