import 'package:flutter/material.dart';
import 'package:learnenglish/shared/themes/app_colors.dart';
import 'package:learnenglish/shared/themes/app_images.dart';
import 'package:learnenglish/shared/widgets/login/login_button.dart';
import 'package:learnenglish/shared/widgets/login_google/login_google_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.background,
      body:(
        Container(  
        width: size.width,
        height: size.height,  
        child: 
          Stack(
            children: [
              Container(
                width: size.width,
                height: size.height * 0.25,
                color: AppColors.primary,
              ),
              Positioned(
                top: 64,
                left: 0,
                right: 0,
                child: Image.asset(
                  AppImages.logomini,
                  height: size.height * 0.12,    
                )
              ),
              Positioned(
                top: size.height * 0.25,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                     Padding(
                       padding: const EdgeInsets.only( top: 40, left: 40, right: 40),
                       child: Text(
                          "Sejam bem vindo, ao learnenglish",
                          textAlign: TextAlign.center,
                          style: TextStyle(letterSpacing: 2),
                        ),
                     ),
                     Padding(
                       padding: const EdgeInsets.only( left: 40, right: 40, bottom: 24),
                       child: Text(
                          "Efetue seu login ou cadastre-se com sua conta google.",
                          textAlign: TextAlign.center,
                          style: TextStyle(letterSpacing: 2),
                        ),
                     ),
                    Container(
                      padding: EdgeInsets.only(left: 40, bottom: 16, right: 40),
                      child: TextField(
                        //controller: nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 40, bottom: 24, right: 40),
                      child: TextField(
                        //controller: nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Senha',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: LoginButton(),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40, top: 24, bottom: 24),
                      child: Container(
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(height: 1, width: 106, color: AppColors.grey),
                              Padding(
                                padding: const EdgeInsets.only(left: 10, right: 10),
                                child: Text("ou"),
                              ),
                              Container(height: 1, width: 106, color: AppColors.grey),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40),
                      child: LoginGoogleButton(),
                    ),
                  ],
                )
              ),
        ]
        )
      ))
    );
  }
}