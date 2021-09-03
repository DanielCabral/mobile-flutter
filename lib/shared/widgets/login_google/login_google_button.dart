import 'package:flutter/material.dart';
import 'package:learnenglish/shared/themes/app_colors.dart';
import 'package:learnenglish/shared/themes/app_images.dart';

class LoginGoogleButton extends StatelessWidget {
  const LoginGoogleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        // onTap : onTap,
        child: Container(
            height: 56,
            decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.circular(5),
              border: Border.fromBorderSide(BorderSide(color: AppColors.grey))),
            child: Row(
          children: [
            Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(AppImages.google),
                    SizedBox(width: 16),
                    Container(height: 56, width: 1, color: AppColors.grey)
                  ],
                )),
            Expanded(
                flex: 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Entrar com Google"),
                  ],
                )),
          ],
        ),
            ));
  }
}
