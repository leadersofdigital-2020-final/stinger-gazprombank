import 'dart:convert';

import 'package:flutter/material.dart';
import '../size_config.dart';
import '../constants.dart';
import '../widgets/default_button.dart';
import 'welcome_screen/welcome_screen.dart';
import 'package:http/http.dart' as http;

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

  static Map<String, String> get headers =>
      {
        "Content-Type": "application/json",
      };

  int currentPage = 0;

  List<Map<String, String>> splashData = [
    {
      "text": "Создавай заявку через свайпы",
      "image": "assets/images/splash_1.png"
    },
    {
      "text":
      "Заполняй блоками стандартную форму",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "Встречайся с теми, кто тебе подходит",
      "image": "assets/images/splash_3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => splashContent(
                    splashData[index]['text'],
                    splashData[index]["image"],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          splashData.length,
                              (index) => buildDot(index: index),
                        ),
                      ),
                      Spacer(flex: 3),
                      DefaultButton(
                        text: "Продолжить",
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => WelcomeScreen()),
                          );
                        },
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }

  Column splashContent(String text, image) => Column(
    children: <Widget>[
      Spacer(),
      Text(
        "РУКОВОДИТЕЛЬ",
        style: TextStyle(
          fontSize: getProportionateScreenWidth(36),
          color: kPrimaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        text,
        textAlign: TextAlign.center,
      ),
      Spacer(flex: 2),
      Image.asset(
        image,
        height: getProportionateScreenHeight(265),
        width: getProportionateScreenWidth(235),
      ),
    ],
  );
}