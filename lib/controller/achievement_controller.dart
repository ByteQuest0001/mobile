import '../model/achievement_model.dart';

class AchievementController {
  final List<Achievement> _achievements;

  AchievementController(this._achievements);

  void editAchievement(int index, Achievement updatedAchievement) {
    _achievements[index] = updatedAchievement;
  }

  void addAchievement(Achievement newAchievement) {
    _achievements.add(newAchievement);
  }

  List<Achievement> get achievements => _achievements;
}
