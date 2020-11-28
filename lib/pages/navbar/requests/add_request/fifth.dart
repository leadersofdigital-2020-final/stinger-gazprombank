import 'package:flutter/material.dart';
import 'data.dart';
import '../../../../constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/cupertino.dart';
import '../../../../widgets/default_button.dart';
import '../../../../singleton.dart';
import 'package:provider/provider.dart';

enum SingingCharacter { ur, ist, inya, mat, ivt, phys, fspn, bio, ek, psyc, phil }

enum SingingCharacter1 { pmi, mkn, ib, rb }

class Fifth extends StatefulWidget {
  final PlanetInfo planetInfo;

  Fifth({Key key, this.planetInfo}) : super(key: key);

  @override
  _FifthState createState() => _FifthState();
}

class _FifthState extends State<Fifth> {
  SingingCharacter _character = SingingCharacter.ur;
  SingingCharacter1 _character1 = SingingCharacter1.pmi;
  int index = 0;

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
                          "Выберите факультет",
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
                        ListTile(
                          title: Text('Юридический'),
                          leading: Radio(
                            value: SingingCharacter.ur,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: Text('Исторический'),
                          leading: Radio(
                            value: SingingCharacter.ist,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: Text('Институт иностранных языков'),
                          leading: Radio(
                            value: SingingCharacter.inya,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                        GestureDetector(
                          onTap: () => setState(() {
                            _character = SingingCharacter.mat;
                          }),
                          child: ListTile(
                            title: Text('Математический'),
                            leading: Radio(
                              value: SingingCharacter.mat,
                              groupValue: _character,
                              onChanged: (SingingCharacter value) {
                                setState(() {
                                  _character = value;
                                });
                              },
                            ),
                          ),
                        ),
                        ListTile(
                          title: Text('ИВТ'),
                          leading: Radio(
                            value: SingingCharacter.ivt,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: Text('Физческий'),
                          leading: Radio(
                            value: SingingCharacter.phys,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: Text('ФСПН'),
                          leading: Radio(
                            value: SingingCharacter.fspn,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: Text('Биологии и экологии'),
                          leading: Radio(
                            value: SingingCharacter.bio,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: Text('Экологии'),
                          leading: Radio(
                            value: SingingCharacter.ek,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: Text('Психологии'),
                          leading: Radio(
                            value: SingingCharacter.psyc,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                        ListTile(
                          title: Text('Физиологии и коммуникации'),
                          leading: Radio(
                            value: SingingCharacter.phil,
                            groupValue: _character,
                            onChanged: (SingingCharacter value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          ),
                        ),
                        SizedBox(height: 32),
                        Divider(color: Colors.black38),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Text(
                      'Выберите направление',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 25,
                        color: const Color(0xff47455f),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  _character == SingingCharacter.mat
                      ? Column(
                    children: [
                      ListTile(
                        title: Text('ПМИ'),
                        leading: Radio(
                          value: SingingCharacter1.pmi,
                          groupValue: _character1,
                          onChanged: (SingingCharacter1 value) {
                            setState(() {
                              _character1 = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: Text('Информационная безопасность'),
                        leading: Radio(
                          value: SingingCharacter1.ib,
                          groupValue: _character1,
                          onChanged: (SingingCharacter1 value) {
                            setState(() {
                              _character1 = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: Text('МКН'),
                        leading: Radio(
                          value: SingingCharacter1.mkn,
                          groupValue: _character1,
                          onChanged: (SingingCharacter1 value) {
                            setState(() {
                              _character1 = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        title: Text('Компьютерная безопасность'),
                        leading: Radio(
                          value: SingingCharacter1.rb,
                          groupValue: _character1,
                          onChanged: (SingingCharacter1 value) {
                            setState(() {
                              _character1 = value;
                            });
                          },
                        ),
                      ),
                    ],
                  )
                  : ListTile(
                    title: Text('Юриспруденция'),
                    leading: Radio(
                      value: SingingCharacter.ur,
                      groupValue: _character,
                      onChanged: (SingingCharacter value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 32),
                  DefaultButton(
                    text: "Далее",
                    press: () {
                      Provider.of<Singleton>(context, listen: false).pageController.nextPage(
                          duration: Duration(milliseconds: 300), curve: Curves.ease);
                      setState(() => descriptions[4] = "Математический, Информационная безопасность");
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