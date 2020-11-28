import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'home_header.dart';
import 'popular_places.dart';
import 'top_travellers.dart';
import '../../../constants.dart';
import 'package:page_transition/page_transition.dart';
import 'add_request/request.dart';

class Requests extends StatefulWidget {
  @override
  _RequestsState createState() => _RequestsState();
}

class _RequestsState extends State<Requests> with SingleTickerProviderStateMixin<Requests> {
  AnimationController _scaleController;

  Animation<double> _scaleAnimation;

  bool hide = false;

  @override
  void initState() {
    _scaleController = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 300)
    );

    _scaleAnimation = Tween<double>(
        begin: 1.0,
        end: 30.0
    ).animate(_scaleController)..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.push(context, PageTransition(
            child: AddRequest(),
            type: PageTransitionType.fade
        ));
        Future.delayed(Duration(seconds: 1)).then((value) {
          _scaleController.reset();
          setState(() => hide = false);
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _scaleController.dispose();
    super.dispose();
  }

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
        onTap: () {
          setState(() => hide = true);
          _scaleController.forward();
        },
        child: AnimatedBuilder(
          animation: _scaleController,
          builder: (context, child) =>
              Transform.scale(
                  scale: _scaleAnimation.value,
                  child: Container(
                    padding: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: kPrimaryColor,
                    ),
                    child: hide ? Container() : Icon(
                      Icons.add,
                      size: getProportionateScreenWidth(35),
                      color: Colors.white,
                    ),
                  ),
              )
        )
      ),
    );
  }
}