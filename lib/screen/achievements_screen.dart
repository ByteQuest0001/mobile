import 'package:bytequest/screen/achievement_details_screen.dart';
import 'package:bytequest/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:bytequest/controller/achievement_controller.dart';
import 'package:bytequest/model/achievement_model.dart';
import 'package:bytequest/screen/edit_achievement_screen.dart';
import 'package:bytequest/screen/user_profile_screen.dart';

class AchievementsScreen extends StatefulWidget {
  const AchievementsScreen({Key? key}) : super(key: key);

  @override
  _AchievementsScreenState createState() => _AchievementsScreenState();
}

class _AchievementsScreenState extends State<AchievementsScreen> {
  final List<Achievement> achievements = [
    Achievement(
      name: 'Flutter Wizard',
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

  late AchievementController achievementController;

  @override
  void initState() {
    super.initState();
    achievementController = AchievementController(achievements);
  }

  void addAchievement(Achievement newAchievement) {
    setState(() {
      achievementController.addAchievement(newAchievement);
    });
  }

  @override
  Widget build(BuildContext context) {
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
                height: MediaQuery.of(context).size.height * 0.05,
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EditAchievementScreen(
                            achievement: Achievement(
                              name: '',
                              description: '',
                              date:
                                  '', // You might want to initialize with default values or null
                              situation: '',
                              category: '',
                            ),
                            index: -1,
                            controller: achievementController,
                          ),
                        ),
                      ).then((newAchievement) {
                        if (newAchievement != null) {
                          addAchievement(newAchievement);
                        }
                      });
                    },
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
                              achievement: achievement,
                              index: index,
                              controller: achievementController,
                            ),
                          ),
                        ).then((value) {
                          if (value != null) {
                            setState(() {
                              achievements[index] = value;
                            });
                          }
                        });
                      },
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
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          EditAchievementScreen(
                                        achievement: achievement,
                                        index: index,
                                        controller: achievementController,
                                      ),
                                    ),
                                  ).then((value) {
                                    if (value != null) {
                                      setState(() {
                                        achievements[index] = value;
                                      });
                                    }
                                  });
                                },
                                icon: const Icon(Icons.edit),
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
