import 'package:flutter/material.dart';
import 'package:learnenglish/modules/lessonsList/lessons_controller.dart';
import 'package:learnenglish/shared/shared/models/user_model.dart';
import 'package:learnenglish/shared/themes/app_colors.dart';
import 'package:learnenglish/shared/widgets/lessonsList/lessons_list.dart';

class LessonsPage extends StatefulWidget {
  final UserModel user;
  const LessonsPage({Key? key, required this.user}) : super(key: key);

  @override
  _LessonsPageState createState() => _LessonsPageState();
}

class _LessonsPageState extends State<LessonsPage> {
  final controller = LessonsController();
  final pages = [
    Container(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 24, left: 16, right: 16, bottom: 10),
        child: Column(
          children: [
            ListTile(
                title: Text("Suas Aulas",
                    style: TextStyle(
                        color: AppColors.secondary,
                        fontSize: 16,
                        fontWeight: FontWeight.bold))),
            LessonsList(),
          ],
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(152),
          child: Container(
              height: 142,
              color: AppColors.primary,
              child: Center(
                  child: ListTile(
                      title: Text(
                "Aulas",
                style: TextStyle(
                    color: AppColors.background,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )))),
        ),
        body: SingleChildScrollView(child: pages[controller.currentPage]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            controller.getLessons();
            controller.setPage(0);
            Navigator.pushNamed(context, "/lessons", arguments: widget.user);
            setState(() {});
          },
          child: const Icon(Icons.add),
          backgroundColor: AppColors.primary,
        ),
        bottomNavigationBar: Container(
            height: 60,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/home", arguments: widget.user);
                    },
                    icon: Icon(Icons.home_outlined, color: AppColors.textgrey),
                  ),
                  IconButton(
                    onPressed: () {
                      controller.setPage(0);
                    },
                    icon: Icon(Icons.description, color: AppColors.primary),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/messages", arguments: widget.user);
                    },
                    icon: Icon(Icons.mail_outline, color: AppColors.textgrey),
                  )
                ])));
  }
}
