import 'package:flutter/material.dart';
//import 'package:recipe_app/components/my_bottom_nav_bar.dart';
import '../../constants.dart';
import '../../size_config.dart';

class Account extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
    //   appBar: buildAppBar(),
    //   body: SingleChildScrollView(
    //       child: Column(
    //         children: <Widget>[
    //           info(
    // "Jhon Doe",
    //             "Jhondoe01@gmail.com",
    //             "assets/images/pic.png",
    //           ),
    //           SizedBox(height: SizeConfig.defaultSize * 2), //20
    //           ProfileMenuItem(
    //             iconSrc: "assets/icons/bookmark_fill.svg",
    //             title: "Saved Recipes",
    //             press: () {},
    //           ),
    //           ProfileMenuItem(
    //             iconSrc: "assets/icons/chef_color.svg",
    //             title: "Super Plan",
    //             press: () {},
    //           ),
    //           ProfileMenuItem(
    //             iconSrc: "assets/icons/language.svg",
    //             title: "Change Language",
    //             press: () {},
    //           ),
    //           ProfileMenuItem(
    //             iconSrc: "assets/icons/info.svg",
    //             title: "Help",
    //             press: () {},
    //           ),
    //         ],
    //       ),
    //   bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      leading: SizedBox(),
      // On Android it's false by default
      centerTitle: true,
      title: Text("Profile"),
      actions: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text(
            "Edit",
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

  // SizedBox info(String name, email, image) => SizedBox(
  //   height: defaultSize * 24, // 240
  //   child: Stack(
  //     children: <Widget>[
  //       ClipPath(
  //         clipper: CustomShape(),
  //         child: Container(
  //           height: defaultSize * 15, //150
  //           color: kPrimaryColor,
  //         ),
  //       ),
  //       Center(
  //         child: Column(
  //           mainAxisAlignment: MainAxisAlignment.end,
  //           children: <Widget>[
  //             Container(
  //               margin: EdgeInsets.only(bottom: defaultSize), //10
  //               height: defaultSize * 14, //140
  //               width: defaultSize * 14,
  //               decoration: BoxDecoration(
  //                 shape: BoxShape.circle,
  //                 border: Border.all(
  //                   color: Colors.white,
  //                   width: defaultSize * 0.8, //8
  //                 ),
  //                 image: DecorationImage(
  //                   fit: BoxFit.cover,
  //                   image: AssetImage(image),
  //                 ),
  //               ),
  //             ),
  //             Text(
  //               name,
  //               style: TextStyle(
  //                 fontSize: defaultSize * 2.2, // 22
  //                 color: kTextColor,
  //               ),
  //             ),
  //             SizedBox(height: defaultSize / 2), //5
  //             Text(
  //               email,
  //               style: TextStyle(
  //                 fontWeight: FontWeight.w400,
  //                 color: Color(0xFF8492A2),
  //               ),
  //             )
  //           ],
  //         ),
  //       )
  //     ],
  //   ),
  // );
  //
  // Inkwell profileMenuItem() => InkWell(
  //   onTap: press,
  //   child: Padding(
  //     padding: EdgeInsets.symmetric(
  //         horizontal: defaultSize * 2, vertical: defaultSize * 3),
  //     child: SafeArea(
  //       child: Row(
  //         children: <Widget>[
  //           SvgPicture.asset(iconSrc),
  //           SizedBox(width: defaultSize * 2),
  //           Text(
  //             title,
  //             style: TextStyle(
  //               fontSize: defaultSize * 1.6, //16
  //               color: kTextLigntColor,
  //             ),
  //           ),
  //           Spacer(),
  //           Icon(
  //             Icons.arrow_forward_ios,
  //             size: defaultSize * 1.6,
  //             color: kTextLigntColor,
  //           )
  //         ],
  //       ),
  //     ),
  //   ),
  // );
}