import 'package:flutter/material.dart';
import 'background.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../widgets/rounded_button.dart';
import '../../constants.dart';
import '../login/login.dart';
import '../signup/signup.dart';
import '../../fade_animations.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Background(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FadeAnimation(0, Text(
                    "ДОБРО ПОЖАЛОВАТЬ В HR ВОК",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),),
                  SizedBox(height: size.height * 0.05),
                  FadeAnimation(
                    0.2,
                    SvgPicture.asset(
                      "assets/icons/chat.svg",
                      height: size.height * 0.45,
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
                  FadeAnimation(0.4, RoundedButton(
                    text: "ВОЙТИ",
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen();
                          },
                        ),
                      );
                    },
                  ),),
                  FadeAnimation(0.6, RoundedButton(
                    text: "ЗАРЕГИСТРИРОВАТЬСЯ",
                    color: kPrimaryLightColor,
                    textColor: Colors.black,
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignUpScreen();
                          },
                        ),
                      );
                    },
                  ),)
                ],
              ),
            )
        )
    );
  }
}