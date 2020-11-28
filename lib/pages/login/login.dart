import 'package:flutter/material.dart';
import 'background.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../widgets/rounded_button.dart';
import '../../widgets/rounded_input_field.dart';
import '../../widgets/rounded_password_field.dart';
import '../../widgets/already_have_account_check.dart';
import '../signup/signup.dart';
import '../navbar/navbar.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Background(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "ВОЙТИ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: size.height * 0.03),
                  SvgPicture.asset(
                    "assets/icons/login.svg",
                    height: size.height * 0.35,
                  ),
                  SizedBox(height: size.height * 0.03),
                  RoundedInputField(
                    hintText: "Ваш Email",
                    onChanged: (value) {},
                  ),
                  RoundedPasswordField(
                    onChanged: (value) {},
                  ),
                  RoundedButton(
                    text: "ВОЙТИ",
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Navbar()),
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  AlreadyHaveAnAccountCheck(
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
                  ),
                ],
              ),
            )
        )
    );
  }
}