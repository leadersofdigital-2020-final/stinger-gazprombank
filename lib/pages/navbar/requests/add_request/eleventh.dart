import 'package:flutter/material.dart';
import 'data.dart';
import '../../../../constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../widgets/default_button.dart';
import '../../../../singleton.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import '../../../../models/travel_spot.dart';

class Eleventh extends StatefulWidget {
  final PlanetInfo planetInfo;

  const Eleventh({Key key, this.planetInfo}) : super(key: key);

  @override
  _EleventhState createState() => _EleventhState();
}

class _EleventhState extends State<Eleventh> {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey[400])
  );

  TextEditingController textEditingController = TextEditingController();

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
                          widget.planetInfo.name2,
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
                        TextField(
                          maxLines: 5,
                          controller: textEditingController,
                          decoration: InputDecoration(
                            errorBorder: outlineInputBorder,
                            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0//MediaQuery.of(context).size.height - 1600
                            ),
                            enabledBorder: outlineInputBorder,
                            border: outlineInputBorder,
                          ),
                        ),
                        SizedBox(height: 32),
                        SizedBox(height: 32),
                        DefaultButton(
                          text: "Создать",
                          press: () async {
                            travelSpots.insert(0,
                              TravelSpot(
                                users: users..shuffle(),
                                name: "Программист-тестировщик",
                                image: "assets/test.png",
                                date: DateTime(2020, 10, 15),
                              ),
                            );
                            setState(() => descriptions[10] = textEditingController.text);
                            Navigator.pop(context);
                            Navigator.pop(context);
                            final response = await http.get(
                              'http://127.0.0.1:8000/vacancy/',
                              headers: {
                                'Content-Type': 'application/json',
                              },
                            );
                          },
                        ),
                      ],
                    ),
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