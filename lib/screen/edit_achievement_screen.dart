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
    widget.controller.editAchievement(widget.index, updatedAchievement);
    Navigator.pop(context, updatedAchievement);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Achievement'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: _saveAchievement,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _descriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
            ),
            TextField(
              controller: _dateController,
              decoration: const InputDecoration(labelText: 'Date'),
            ),
            TextField(
              controller: _situationController,
              decoration: const InputDecoration(labelText: 'Situation'),
            ),
            TextField(
              controller: _categoryController,
              decoration: const InputDecoration(labelText: 'Category'),
            ),
          ],
        ),
      ),
    );
  }
}
