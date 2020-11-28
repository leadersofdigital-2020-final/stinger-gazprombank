import 'package:flutter/material.dart';
import 'package:gazprombank/models/travel_spot.dart';
import '../../../../size_config.dart';
import '../../../../constants.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'data.dart';
import 'first.dart';
import 'second.dart';
import 'third.dart';
import 'fourth.dart';
import 'fifth.dart';
import 'sixth.dart';
import 'seventh.dart';
import 'eighth.dart';
import 'ninth.dart';
import 'tenth.dart';
import 'eleventh.dart';
import '../../../../widgets/default_button.dart';
import '../../../../singleton.dart';
import 'package:provider/provider.dart';

class RequestDetails extends StatefulWidget {
  RequestDetails({
    this.initialPage
});

  final int initialPage;

  @override
  _RequestDetailsState createState() => _RequestDetailsState();
}

class _RequestDetailsState extends State<RequestDetails> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: PageView(
        controller: Provider.of<Singleton>(context, listen: false).pageController,
        children: [
          First(planetInfo: planets[0]),
          Second(planetInfo: planets[1]),
          Third(planetInfo: planets[2]),
          Fourth(planetInfo: planets[3]),
          Fifth(planetInfo: planets[4]),
          Sixth(planetInfo: planets[5]),
          Seventh(planetInfo: planets[6]),
          Eighth(planetInfo: planets[7]),
          Ninth(planetInfo: planets[8]),
          Tenth(planetInfo: planets[9]),
          Eleventh(planetInfo: planets[10]),
        ],
      )
    );
  }
}