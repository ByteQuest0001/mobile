import 'package:bytequest/helper/global.dart';
import 'package:bytequest/screen/achievements_screen.dart';
import 'package:bytequest/screen/user_profile_screen.dart';
import 'package:flutter/material.dart';
import '../model/achievement_model.dart';
import '../controller/achievement_controller.dart';

class EditAchievementScreen extends StatefulWidget {
  final Achievement achievement;
  final int index;
  final AchievementController controller;

  const EditAchievementScreen({
    super.key,
    required this.achievement,
    required this.index,
    required this.controller,
  });

  @override
  _EditAchievementScreenState createState() => _EditAchievementScreenState();
}

class _EditAchievementScreenState extends State<EditAchievementScreen> {
  late TextEditingController _nameController;
  late TextEditingController _descriptionController;
  late TextEditingController _dateController;
  late TextEditingController _situationController;
  late TextEditingController _categoryController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.achievement.name);
    _descriptionController =
        TextEditingController(text: widget.achievement.description);
    _dateController = TextEditingController(text: widget.achievement.date);
    _situationController =
        TextEditingController(text: widget.achievement.situation);
    _categoryController =
        TextEditingController(text: widget.achievement.category);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _dateController.dispose();
    _situationController.dispose();
    _categoryController.dispose();
    super.dispose();
  }

  void _saveAchievement() {
    final updatedAchievement = Achievement(
      name: _nameController.text,
      description: _descriptionController.text,
      date: _dateController.text,
      situation: _situationController.text,
      category: _categoryController.text,
    );
    if (widget.index == -1) {
      // Adding new achievement
      widget.controller.addAchievement(updatedAchievement);
    } else {
      // Editing existing achievement
      widget.controller.editAchievement(widget.index, updatedAchievement);
    }

    Navigator.pop(context, updatedAchievement);
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

                  // save and user profile icon
                  Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: _saveAchievement,
                            icon: const Icon(
                              Icons.save,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const UserProfileScreen(),
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
                    ],
                  ),
                ],
              ),

              // spacing
              const SizedBox(
                height: 50,
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
                      child: TextField(
                        controller: _nameController,
                        decoration: const InputDecoration(
                          labelText: 'Name',
                          labelStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),

              // spacing
              const SizedBox(
                height: 30,
              ),

              // description
              Container(
                height: mq.height * .2,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: bgColor,
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: TextField(
                    controller: _descriptionController,
                    decoration: const InputDecoration(
                      labelText: 'Description',
                      labelStyle: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              // spacing
              const SizedBox(height: 50),

              // date + situation row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.white),
                        ),
                      ),
                      child: TextField(
                        controller: _dateController,
                        decoration: const InputDecoration(
                          labelText: 'Date',
                          labelStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: const TextStyle(
                            color: Colors.white), // Set text color to white
                      ),
                    ),
                  ),

                  // spacing
                  const SizedBox(height: 10),

                  // situation
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Colors.white),
                        ),
                      ),
                      child: TextField(
                        controller: _situationController,
                        decoration: const InputDecoration(
                          labelText: 'Situation',
                          labelStyle: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: const TextStyle(
                            color: Colors.white), // Set text color to white
                      ),
                    ),
                  ),
                ],
              ),

              // date

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
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      child: TextField(
                        controller: _categoryController,
                        decoration: const InputDecoration(
                          labelText: 'Category',
                          labelStyle: TextStyle(
                            color: Colors.white,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                        style: TextStyle(
                            color: Colors.white), // Set text color to white
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
