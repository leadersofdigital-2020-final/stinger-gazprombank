import 'package:flutter/material.dart';
import 'data.dart';
import '../../../../constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../widgets/section_title.dart';
import '../../../../widgets/default_button.dart';
import '../../../../singleton.dart';
import 'package:provider/provider.dart';

class Second extends StatefulWidget {
  final PlanetInfo planetInfo;

  Second({Key key, this.planetInfo}) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
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
                        Divider(color: Colors.black38),
                      ],
                    ),
                  ),
                  SectionTitle(
                    title: "Рекомендуемые вакансии",
                    press: () {}
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => EventsScreen()),
                    // ),
                  ),
                  Container(
                    height: 250,
                    padding: const EdgeInsets.only(left: 32.0),
                    child: ListView.builder(
                        itemCount: widget.planetInfo.images.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 200,
                            width: 200,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () => setState(() => textEditingController.text = textEditingController.text + widget.planetInfo.images2[index] + ", "),
                                  child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    child: AspectRatio(
                                        aspectRatio: 1,
                                        child: widget.planetInfo.images[index].contains(".svg")
                                            ? SvgPicture.asset(
                                          widget.planetInfo.images[index],
                                          fit: BoxFit.cover,
                                        ) : Image.asset(
                                          widget.planetInfo.images[index],
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                Text(
                                    widget.planetInfo.images2[index]
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                  SizedBox(height: 32),
                  DefaultButton(
                    text: "Далее",
                    press: () {
                      Provider.of<Singleton>(context, listen: false).pageController.nextPage(
                          duration: Duration(milliseconds: 300), curve: Curves.ease);
                      setState(() => descriptions[1] = textEditingController.text);
                    },
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