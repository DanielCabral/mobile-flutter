import 'package:flutter/material.dart';
import 'package:learnenglish/modules/login/login_page.dart';
import 'package:learnenglish/modules/messages/messages_page.dart';
import 'package:learnenglish/modules/splash/splash_page.dart';
import 'package:learnenglish/shared/themes/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(      
        primaryColor: AppColors.primary,
      ),
      home: MessagesPage()
    );
  }
}

