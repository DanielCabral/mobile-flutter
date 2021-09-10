import 'package:flutter/material.dart';
import 'package:learnenglish/shared/shared/models/lessons_model.dart';
import 'package:learnenglish/shared/themes/app_colors.dart';

class LessonsItem extends StatelessWidget {
  final LessonsModel data;
  final VoidCallback onTap;
  const LessonsItem({Key? key, required this.data, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          visualDensity: VisualDensity(horizontal: 0, vertical: -4),
          title: Text("Aula ${data.index} - ${data.title}", style: TextStyle(fontSize:16 ,color: AppColors.textgrey)),
          trailing: Text.rich(
            TextSpan(
              text: "${data.status}", 
              style: TextStyle(
                fontSize:16 ,
                color: data.status == "Em andamento" ? 
                  AppColors.warning: data.status == "Concluido" ? 
                    AppColors.success : 
                    AppColors.error,
                fontWeight: FontWeight.bold,
              )
            )
          )
      ),
    );
  }
}
