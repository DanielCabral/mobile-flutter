import 'package:flutter/material.dart';
import 'package:learnenglish/shared/themes/app_colors.dart';
import 'package:learnenglish/shared/themes/app_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.background,
        body: Stack(
            children: [
              Center(child: Image.asset( 
                AppImages.background,height:size.height, width: size.width,fit: BoxFit.fill)),
              Center(child: Image.asset(AppImages.logo)),
            ],
          ),
        );
  }
}
