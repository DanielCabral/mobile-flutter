import 'package:flutter/material.dart';

class LessonVideo extends StatelessWidget {
  const LessonVideo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video"),
      ),
      body: Container(
        child: Column(
          children: [Center(child: Text("Video"))]
        )
      ),
    );
  }
}