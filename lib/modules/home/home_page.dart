import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learnenglish/modules/home/home_controller.dart';
import 'package:learnenglish/shared/shared/models/user_model.dart';
import 'package:learnenglish/shared/themes/app_colors.dart';
import 'package:learnenglish/shared/widgets/lessonsList/lessons_list.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  final UserModel user;
  const HomePage({Key? key, required this.user}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

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
                      ),
                      trailing: InkWell(
                          onTap: () async {
                            SharedPreferences prefs = await SharedPreferences.getInstance();
                            prefs.remove('user');
                            Navigator.pushNamed(context,"/login");
                          },
                          child: Icon(Icons.logout_outlined, color: AppColors.background),
                        ),
                  )
              )
            ),
        ),
        body: SingleChildScrollView(child:   Container(
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
                          text: "${widget.user.name}",
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ]),
              ),
              trailing: Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: NetworkImage(widget.user.photoURL!))),
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
            Column(children: [
              ListTile(
                  title: Text("Suas Aulas",
                      style: TextStyle(
                          color: AppColors.secondary,
                          fontSize: 16,
                          fontWeight: FontWeight.bold))),
              LessonsList(),
            ])
          ],
        ),
      ),
    ),
  ),
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
                      Navigator.pushNamed(context, "/lessons", arguments: widget.user);
                      setState(() {});
                    },
                    icon: Icon(Icons.description_outlined,
                        color: AppColors.textgrey),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/messages", arguments: widget.user);
                      setState(() {});
                    },
                    icon: Icon(Icons.mail_outline, color: AppColors.textgrey),
                  )
                ])));
  }
}
