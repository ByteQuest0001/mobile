import '../model/achievement_model.dart';

class AchievementController {
  final List<Achievement> _achievements;

  AchievementController(this._achievements);

  void editAchievement(int index, Achievement updatedAchievement) {
    _achievements[index] = updatedAchievement;
  }

  List<Achievement> get achievements => _achievements;
}
