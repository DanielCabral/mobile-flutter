import 'package:flutter/material.dart';
import 'package:learnenglish/modules/chatMessage/chat_message_controller.dart';
import 'package:learnenglish/shared/themes/app_colors.dart';

class ChatMessagePage extends StatefulWidget {
  const ChatMessagePage({Key? key}) : super(key: key);

  @override
  _ChatMessagePageState createState() => _ChatMessagePageState();
}

class _ChatMessagePageState extends State<ChatMessagePage> {
  final controller = ChatMessageController();
  final pages = [Container()];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(152),
        child: Container(
            height: 142,
            color: AppColors.primary,
            child: Padding(
              padding: const EdgeInsets.only(top: 54.0, left: 16, right: 16),
              child: Column(
                children: [
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text.rich(
                          TextSpan(
                              text: "Olá, ",
                              style: TextStyle(
                                fontSize: 20,
                                color: AppColors.background,
                              ),
                              children: [
                                TextSpan(
                                    text: "Gabriel",
                                    style: TextStyle(fontWeight: FontWeight.bold)
                                )
                              ]
                          ),
                        ), 
                      ),
                      Container(
                        height: 24,
                        width: 24,
                        child: Icon(Icons.more_vert, color: AppColors.background),
                      ),
                    ],
                  ),          
                  ListTile(
                    contentPadding: EdgeInsets.all(0),
                    visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                    title: Text("Em que posso ajuda-lo?",
                    style: TextStyle(fontSize: 14, color: AppColors.background))
                  ),            
                ],
              ),
            )
        ),
      ),
      body: SingleChildScrollView(child: pages[controller.currentPage]),
      bottomNavigationBar: Container(
            height: 70,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () async {         },
                    child: Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(Icons.attach_file, color: AppColors.background),
                    ),
                  ),
                  // IconButton(
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, "/messages");
                  //     setState(() {});
                  //   },
                  //   icon: Icon(Icons.mail_outline, color: AppColors.textgrey),
                  // ),
                  Container(
                    width: size.width -156,
                    height: 44,
                    child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: 'Digite seu texto',
                          ),
                        ),
                    ),
                  GestureDetector(
                    onTap: () async {         },
                    child: Container(
                      width: 40,
                      height: 42,
                      decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(Icons.send_outlined, color: AppColors.background),
                    ),
                  ),
                ]
            )
      )
    );
  }
}
