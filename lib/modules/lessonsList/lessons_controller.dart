import 'package:learnenglish/shared/shared/models/lessons_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LessonsController {
  var currentPage = 0;
  LessonsModel model = LessonsModel(
    index: 0, title: "Aula", status: "Concluido"
  );

  void setPage(int index) {
    currentPage = index;
  }

    Future<void> getLessons() async {
    try {
      final instance = await SharedPreferences.getInstance();
      final lessons = instance.getStringList("lessons") ?? <String>[];
      lessons.add(model.toJson());
      await instance.setStringList("lessons", lessons);
      print(model);
    } catch (e) {}
  }
}
