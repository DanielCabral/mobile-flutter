import 'dart:io';
import 'package:flutter/material.dart';
import 'package:learnenglish/modules/lessonplayer/Videosettings.dart';

 class LessonPlayer extends StatefulWidget {
  LessonPlayer({Key? key}) : super(key: key);

   @override
   LessonPlayerState createState() => LessonPlayerState();
 }

 class LessonPlayerState extends State<LessonPlayer> {
   @override
   void initState() {
     super.initState();
   }

   @override
   Widget build(BuildContext context) {
     return RotatedBox(quarterTurns: 1,
       child: Scaffold(       
          body: Column(
            children: [
              Expanded(
                  child: VideoDisplay(
                          videoUrl: 'https://crevettic.s3.us-east-2.amazonaws.com/videoplayback+(1).mp4',
                        ),),
                      
            ],
          )),
     );
   }
 }