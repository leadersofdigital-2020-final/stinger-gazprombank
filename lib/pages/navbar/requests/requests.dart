import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'home_header.dart';
import 'popular_places.dart';
import 'top_travellers.dart';
import '../../../constants.dart';

class Requests extends StatefulWidget {
  @override
  _RequestsState createState() => _RequestsState();
}

class _RequestsState extends State<Requests> {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        child: SafeArea(
          top: false,
          child: Column(
            children: [
              HomeHeader(),
              VerticalSpacing(),
              PopularPlaces(),
              VerticalSpacing(),
              TopTravelers(),
              VerticalSpacing(),
            ],
          ),
        ),
      ),
      floatingActionButton: GestureDetector(
        child: Container(
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            color: kPrimaryColor,
          ),
          child: Icon(
            Icons.add,
            size: getProportionateScreenWidth(35),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}