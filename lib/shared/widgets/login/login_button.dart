import 'package:flutter/material.dart';
import 'package:learnenglish/shared/themes/app_colors.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        // onTap : onTap,
        child: 
          Container(
            height: 56,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                Expanded(
                    flex: 1,
                    child: 
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Entrar",style: TextStyle(color: AppColors.background, fontSize:  16)),
                        ],
                      )
                  ),
              ],)
            )
            );
  }
}
