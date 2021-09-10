import 'package:flutter/material.dart';
import 'package:learnenglish/shared/shared/models/chat_model.dart';
import 'package:learnenglish/shared/themes/app_colors.dart';

class ChatList extends StatelessWidget {
  final ChatModel data;
  final VoidCallback onTap;
  const ChatList({Key? key, required this.data, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration( border: Border.all(
        color: AppColors.grey,
        width: 1,
      ),),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 58,
                width:  58,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/${data.photo}'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Container(
                height: 58,
                width: size.width - 128,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              "${data.name}",
                              style: TextStyle(
                                  fontSize: 18, color: AppColors.secondary),
                            ),
                          ),
                          Container(
                            child: data.status == "online" || data.status == "Online" ?  
                                Text(
                                  "${data.status}",
                                  style: TextStyle(fontSize: 12, color: AppColors.primary),
                                ) :  
                                Text(
                                  "${data.lastView}",
                                  style: TextStyle(fontSize: 12, color: AppColors.textgrey)
                                ),
                          ),
                        ]
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${data.lastMessage}",
                            style: TextStyle(
                                fontSize: 14, color: AppColors.textgrey))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
