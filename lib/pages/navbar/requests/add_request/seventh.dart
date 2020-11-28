import 'package:flutter/material.dart';
import 'data.dart';
import '../../../../constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../widgets/default_button.dart';
import '../../../../singleton.dart';
import 'package:provider/provider.dart';

class Seventh extends StatefulWidget {
  final PlanetInfo planetInfo;

  Seventh({Key key, this.planetInfo}) : super(key: key);

  @override
  _SeventhState createState() => _SeventhState();
}

class _SeventhState extends State<Seventh> {
  double sliderValue = 0.0, sliderValue1 = 0.0;

  String doubleToString(double d) {
    String da = d.toString();
    String db = "";
    for (int i = 0; i < da.indexOf("."); i++) {
      db += da[i];
    }
    return db + "руб.";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 300),
                        Text(
                          widget.planetInfo.name,
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 56,
                            color: primaryTextColor,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Text(
                          "Выберите минимальную зарплату",
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 31,
                            color: primaryTextColor,
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Divider(color: Colors.black38),
                        SizedBox(height: 32),
                        Slider(
                          activeColor: kPrimaryColor,
                          value: sliderValue,
                          onChanged: (value) => setState(() => sliderValue = value),
                        ),
                        SizedBox(height: 32),
                        Text(
                            "от " + doubleToString(sliderValue * 100000)
                        ),
                        Divider(color: Colors.black38),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Выберите максимальную зарплату',
                          style: TextStyle(
                            fontFamily: 'Avenir',
                            fontSize: 25,
                            color: const Color(0xff47455f),
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 32),
                        Slider(
                          activeColor: kPrimaryColor,
                          value: sliderValue1,
                          onChanged: (value) => setState(() => sliderValue1 = value),
                        ),
                        SizedBox(height: 32),
                        Text(
                            "до " + doubleToString(sliderValue1 * 100000)
                        ),
                        SizedBox(height: 32),
                        DefaultButton(
                          text: "Далее",
                          press: () {
                            setState(() {
                              Provider.of<Singleton>(context, listen: false).pageController.nextPage(
                                  duration: Duration(milliseconds: 300), curve: Curves.ease);
                              descriptions[6] =
                                  "от " + doubleToString(sliderValue * 100000) +
                                      " до " +
                                      doubleToString(sliderValue1 * 100000);
                              fullValue = descriptions[6];
                            }
                            );
                          },
                        ),
                      ],
                    )
                  ),
                ],
              ),
            ),
            Positioned(
              right: -64,
              child: Hero(
                  tag: widget.planetInfo.position,
                  child: widget.planetInfo.iconImage.contains(".png")
                      ? Image.asset(widget.planetInfo.iconImage, height: 200, width: 200)
                      : SvgPicture.asset(widget.planetInfo.iconImage, height: 200, width: 200)),
            ),
            Positioned(
              top: 60,
              left: 32,
              child: Text(
                widget.planetInfo.position.toString(),
                style: TextStyle(
                  fontFamily: 'Avenir',
                  fontSize: 247,
                  color: primaryTextColor.withOpacity(0.08),
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}