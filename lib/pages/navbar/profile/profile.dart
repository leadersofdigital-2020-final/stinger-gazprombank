import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import 'info.dart';
import 'profile_menu_item.dart';
import '../../../fade_animations.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            FadeAnimation(0, Info(
              image: "assets/images/pic.png",
              name: "Вася Пупкин",
              email: "tagidick_tagidick@mail.ru",
            ),),
            SizedBox(height: SizeConfig.defaultSize * 2), //20
            FadeAnimation(0.2, ProfileMenuItem(
              iconSrc: Icons.settings,
              title: "Настройки",
              press: () {},
            ),),
            FadeAnimation(0.4, ProfileMenuItem(
              iconSrc: Icons.article,
              title: "Безопасность",
              press: () {},
            ),
            ),
            FadeAnimation(0.6, ProfileMenuItem(
              iconSrc: Icons.person,
              title: "Выход",
              press: () {},
            ),)
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      leading: SizedBox(),
      // On Android it's false by default
      centerTitle: true,
      title: Text("Профиль"),
      actions: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text(
            "Редактировать",
            style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.defaultSize * 1.6, //16
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}