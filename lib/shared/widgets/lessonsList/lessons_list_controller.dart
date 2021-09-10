import 'package:flutter/material.dart';
import 'package:learnenglish/shared/shared/models/lessons_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LessonsListController {
  final lessonsNotifier= ValueNotifier<List<LessonsModel>>(<LessonsModel>[]);
  List<LessonsModel> get lessons => lessonsNotifier.value;

  set lessons(List<LessonsModel> value) => lessonsNotifier.value = value;

  LessonsListController() {
    getLessons();
  }
  Future<void> getLessons() async {
    try {
      final instance = await SharedPreferences.getInstance();
      final response = instance.getStringList("lessons") ?? <String>[];
      lessons = response.map((e) => LessonsModel.fromJson(e)).toList();
    } catch (e) {
      lessons = <LessonsModel>[];
    }
  }
}
