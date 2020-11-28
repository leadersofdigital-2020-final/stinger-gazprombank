import 'package:flutter/material.dart';
import 'data.dart';
import '../../../../constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../widgets/default_button.dart';
import '../../../../singleton.dart';
import 'package:provider/provider.dart';

class Eighth extends StatefulWidget {
  final PlanetInfo planetInfo;

  const Eighth({Key key, this.planetInfo}) : super(key: key);

  @override
  _EighthState createState() => _EighthState();
}

class _EighthState extends State<Eighth> {
  String da = "";

  List<String> checks = ["", "", "", "", "", ""];
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
                        Container(
                          height: 800,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                            child: GridView.builder(
                              itemCount: widget.planetInfo.images.length,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: kDefaultPadding,
                                crossAxisSpacing: kDefaultPadding,
                                childAspectRatio: 0.75,
                              ),
                              itemBuilder: (context, index) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Stack(
                                      children: [
                                        GestureDetector(
                                          onTap: () => setState(() => checks[index] = widget.planetInfo.images2[index]),
                                          child: Container(
                                            padding: EdgeInsets.all(kDefaultPadding),
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(16),
                                            ),
                                            child: SvgPicture.asset(widget.planetInfo.images[index]),
                                          ),
                                        ),
                                        checks[index] != "" ? Positioned(
                                          bottom: 10,
                                            right: 10,
                                            child: Icon(
                                              Icons.check,
                                              color: Colors.green,
                                            )
                                        ) : Container()
                                      ],
                                    )
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
                                    child: Text(
                                      // products is out demo list
                                      widget.planetInfo.images2[index],
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                ],
                              ),),
                          ),
                        ),
                        SizedBox(height: 32),
                        DefaultButton(
                          text: "Далее",
                          press: () {
                            Provider.of<Singleton>(context, listen: false).pageController.nextPage(
                                duration: Duration(milliseconds: 300), curve: Curves.ease);
                            setState(() => descriptions[7] = checks.join());
                          },
                        ),
                      ],
                    ),
                  ),
                  // Container(
                  //   height: 250,
                  //   padding: const EdgeInsets.only(left: 32.0),
                  //   child: ListView.builder(
                  //       itemCount: planetInfo.images.length,
                  //       scrollDirection: Axis.horizontal,
                  //       itemBuilder: (context, index) {
                  //         return Card(
                  //           clipBehavior: Clip.antiAlias,
                  //           shape: RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.circular(24),
                  //           ),
                  //           child: AspectRatio(
                  //               aspectRatio: 1,
                  //               child: Image.network(
                  //                 planetInfo.images[index],
                  //                 fit: BoxFit.cover,
                  //               )),
                  //         );
                  //       }),
                  // ),
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
    ]
    )
      )
    );
  }
}