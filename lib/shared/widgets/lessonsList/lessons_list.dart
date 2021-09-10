import 'package:flutter/material.dart';
import 'package:learnenglish/shared/shared/models/lessons_model.dart';
import 'package:learnenglish/shared/widgets/lesson_item/lesson_item.dart';
import 'package:learnenglish/shared/widgets/lessonsList/lessons_list_controller.dart';

class LessonsList extends StatefulWidget {
  const LessonsList({Key? key}) : super(key: key);
  @override
  _LessonsListState createState() => _LessonsListState();
}

class _LessonsListState extends State<LessonsList> {
  final controller = LessonsListController();
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<LessonsModel>>(
        valueListenable: controller.lessonsNotifier,
        builder: (_, lessons, __) => Column(
              children: lessons
                  .map((e) => LessonsItem(
                      data: e,
                      onTap: () {
                        Navigator.pushNamed(context, "/video");
                      }))
                  .toList(),
            ));
  }
}
