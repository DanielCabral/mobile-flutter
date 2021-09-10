import 'package:flutter/material.dart';
import 'package:learnenglish/modules/messages/messages_controller.dart';
import 'package:learnenglish/shared/shared/models/chat_model.dart';
import 'package:learnenglish/shared/themes/app_colors.dart';
import 'package:learnenglish/shared/widgets/chatList/chat_list.dart';

class MessagesPage extends StatefulWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  final controller = MessagesController();
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
                "Messagens",
                style: TextStyle(
                    color: AppColors.background,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )))),
        ),
        body:    Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ChatList(
            data: ChatModel(
              name: "Pedro Santos",
              status:"Online",
              lastView:"3 dias",
              lastMessage: "",
              photo:"person2.jpeg"
            ),
              onTap: () {
                        Navigator.pushNamed(context, "/chat");
                      }
          ),
          ChatList(
            data: ChatModel(
              name: "Jessica Vasconcelos",
              status:"Online",
              lastView:"",
              lastMessage: "",
              photo:"person2.jpeg"
              ),
                            onTap: () {
                        Navigator.pushNamed(context, "/chat");
                      }
          ),
          ChatList(
            data: ChatModel(
              name: "Laura Geovanne",
              status:"",
              lastView:"3 dias",
              lastMessage: "",
              photo:"person2.jpeg"
              ),
                            onTap: () {
                        Navigator.pushNamed(context, "/chat");
                      }
          ),
        ],
      ),
    ),
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
                      Navigator.pushNamed(context, "/lessons");
                    },
                    icon: Icon(Icons.description_outlined, color: AppColors.textgrey),
                  ),
                  IconButton(
                    onPressed: () {
                      controller.setPage(0);
                    },
                    icon: Icon(Icons.mail, color: AppColors.primary),
                  )
                ])));
  }
}
