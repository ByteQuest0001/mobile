import 'package:bytequest/controller/achievement_controller.dart';
import 'package:bytequest/helper/global.dart';
import 'package:bytequest/model/achievement_model.dart';
import 'package:bytequest/screen/edit_achievement_screen.dart';
import 'package:bytequest/screen/user_profile_screen.dart';
import 'package:flutter/material.dart';

class AchievementDetailScreen extends StatefulWidget {
  final Achievement achievement;
  final int index;
  final AchievementController controller;

  const AchievementDetailScreen({
    super.key,
    required this.achievement,
    required this.index,
    required this.controller,
  });

  @override
  State<AchievementDetailScreen> createState() =>
      _AchievementDetailScreenState();
}

class _AchievementDetailScreenState extends State<AchievementDetailScreen> {
  late Achievement achievement;

  @override
  void initState() {
    super.initState();
    achievement = widget.achievement;
  }

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.sizeOf(context);
    const bgColor = Color(0xFF1A0047);

    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 70),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // back button
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
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
                height: 50,
              ),

              // edit button
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: const Icon(Icons.edit),
                  color: Colors.white,
                  onPressed: () async {
                    final updatedAchievement = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => EditAchievementScreen(
                          achievement: achievement,
                          index: widget.index,
                          controller: widget.controller,
                        ),
                      ),
                    );

                    if (updatedAchievement != null) {
                      setState(() {
                        achievement = updatedAchievement;
                      });
                    }
                  },
                ),
              ),

              // name
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: mq.width * .9,
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        achievement.name,
                        style: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // spacing
              const SizedBox(
                height: 30,
              ),

              // achievement description
              Container(
                height: mq.height * .2,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: bgColor,
                    border: Border.all(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    achievement.description,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              // spacing
              const SizedBox(height: 50),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Date: ',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),

                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.white),
                      ),
                    ),
                    child: Text(
                      achievement.date,
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),

                  // spacing
                  const SizedBox(height: 10),

                  // situation
                  const Text(
                    'Situation: ',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),

                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Colors.white),
                      ),
                    ),
                    child: Text(
                      achievement.situation,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),

              // spacing
              const SizedBox(height: 40),

              // category
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Category: ',
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    child: Text(
                      achievement.category,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
