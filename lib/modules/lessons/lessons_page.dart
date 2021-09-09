import 'package:flutter/material.dart';
import 'package:learnenglish/modules/lessons/lessons_controller.dart';
import 'package:learnenglish/shared/themes/app_colors.dart';

class LessonsPage extends StatefulWidget {
  const LessonsPage({ Key? key }) : super(key: key);

  @override
  _LessonsPageState createState() => _LessonsPageState();
}

class _LessonsPageState extends State<LessonsPage> {
  final controller = LessonsController();
    final pages = [
    Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

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
      body: Container(),
      bottomNavigationBar: Container(
            height: 60,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/home"); 
                    },
                    icon: Icon(Icons.home_outlined, color: AppColors.textgrey),
                  ),
                  IconButton(
                    onPressed: () {
                     controller.setPage(0);              
                    },
                    icon: Icon(Icons.description,
                        color: AppColors.primary),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/messages");
                    },
                    icon: Icon(Icons.mail_outline, color: AppColors.textgrey),
                  )
                ])));
  }
}