
import 'package:flutter/material.dart';
import 'package:learnenglish/modules/login/login_page.dart';
import 'modules/home/home_page.dart';
import 'modules/lessonsList/lessons_page.dart';
import 'modules/messages/messages_page.dart';
import 'modules/splash/splash_page.dart';
import 'modules/lessonplayer/lesson_player.dart';
import 'shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LearnEnglish',
      theme: ThemeData(      
        primaryColor: AppColors.primary,
      ),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/messages": (context) => MessagesPage(),
        "/lessons": (context) => LessonsPage(),
        "/video": (context) => LessonPlayer(),
      },
    );
  }
}