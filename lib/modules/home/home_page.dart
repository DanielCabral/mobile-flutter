import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learnenglish/modules/home/home_controller.dart';
import 'package:learnenglish/shared/themes/app_colors.dart';
import 'package:learnenglish/shared/widgets/lessonsList/lessons_list.dart';

class HomePage extends StatefulWidget {
  
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
final List<String> entries = <String>['A', 'B', 'C'];
class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  final pages = [
    Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              title: Text.rich(
                TextSpan(
                    text: "Olá, ",
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColors.primary,
                    ),
                    children: [
                      TextSpan(
                          text: "Gabriel",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ]),
              ),
              trailing: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            ListTile(
                title: Text("É bom ter você de volta.",
                    style: TextStyle(fontSize: 14)),
                subtitle: Text("Continue aprendendo, retorne suas aulas.",
                    style: TextStyle(fontSize: 14))),
            Column(
              children: [
                ListTile(
                  title: Text("Progresso do curso",
                      style: TextStyle(
                          color: AppColors.secondary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: LinearProgressIndicator(
                    value: 0.3,
                    minHeight: 20,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                ListTile(
                    title: Text(
                      "Suas Aulas",
                      style: TextStyle(
                          color: AppColors.secondary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold
                      )
                    )
                ),
                LessonsList(),
              ]
            )
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
                "Home",
                style: TextStyle(
                    color: AppColors.background,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )))),
        ),
        body: SingleChildScrollView(child: pages[controller.currentPage]),
        bottomNavigationBar: Container(
            height: 60,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      controller.setPage(0);
                      setState(() {});
                    },
                    icon: Icon(Icons.home, color: AppColors.primary),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/lessons");
                      setState(() {});
                    },
                    icon: Icon(Icons.description_outlined,
                        color: AppColors.textgrey),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/messages");
                      setState(() {});
                    },
                    icon: Icon(Icons.mail_outline, color: AppColors.textgrey),
                  )
                ])));
  }
}
