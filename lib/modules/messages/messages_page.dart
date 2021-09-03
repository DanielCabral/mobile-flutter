import 'package:flutter/material.dart';
import 'package:learnenglish/shared/themes/app_colors.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: AppColors.background,
        body: (Container(
            width: size.width,
            height: size.height,
            child: Stack(children: [
              Container(
                width: size.width,
                height: size.height * 0.25,
                color: AppColors.primary,
              ),
              Positioned(
                  top: 54,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24, right:24, top: 24),
                    child: Container(
                      child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Messages", style: TextStyle(fontSize: 22, color: AppColors.background),),
                          Icon(Icons.more_vert, color: AppColors.background)
                        ])
                    ),
                  )
              ),
              Positioned(
                top: size.height * 0.20,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child:Container(
                    
                    decoration: BoxDecoration(
                      color: AppColors.background,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.fromBorderSide(BorderSide(color: AppColors.grey)),
                    ),
                    child: TextField(
                          //controller: nameController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Search contact',
                            suffixIcon: Icon(Icons.search),
                            fillColor: AppColors.error,
                          ),
                        ),
                  ),
                ),
              ),
            ]))));
  }
}
