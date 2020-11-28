import 'package:flutter/material.dart';
import 'package:gazprombank/models/travel_spot.dart';
import '../../../../size_config.dart';
import '../../../../constants.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'data.dart';
import '../../../../widgets/default_button.dart';
import 'request_details.dart';
import 'package:provider/provider.dart';
import '../../../../singleton.dart';
import 'package:provider/provider.dart';

class AddRequest extends StatefulWidget {
  @override
  _AddRequestState createState() => _AddRequestState();
}

class _AddRequestState extends State<AddRequest> {

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [gradientStartColor, gradientEndColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3, 0.7])),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(Icons.arrow_back_ios),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Создайте заявку',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 44,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    DropdownButton(
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            'Для соискателя',
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontSize: 24,
                              color: const Color(0x7cdbf1ff),
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                      onChanged: (value) {},
                      icon: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Image.asset('assets/drop_down_icon.png'),
                      ),
                      underline: SizedBox(),
                    ),
                  ],
                ),
              ),
              Container(
                height: 500,
                padding: const EdgeInsets.only(left: 32),
                child: Swiper(
                  controller: Provider.of<Singleton>(context, listen: false).swiperController,
                  itemCount: planets.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                  layout: SwiperLayout.STACK,
                  pagination: SwiperPagination(
                    builder:
                    DotSwiperPaginationBuilder(activeSize: 20, space: 8),
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, a, b) => RequestDetails()
                          ),
                        );
                      },
                      child: Stack(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              SizedBox(height: 100),
                              Card(
                                elevation: 8,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 100),
                                      Text(
                                        planets[index].name,
                                        style: TextStyle(
                                          fontFamily: 'Avenir',
                                          fontSize: 44,
                                          color: const Color(0xff47455f),
                                          fontWeight: FontWeight.w900,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        descriptions[index],
                                        style: TextStyle(
                                          fontFamily: 'Avenir',
                                          fontSize: 23,
                                          color: primaryTextColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.left,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: 32),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            "Редактировать",
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 18,
                                              color: secondaryTextColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: secondaryTextColor,
                                          ),
                                          SizedBox(width: 30),
                                          if (descriptions[index] != "Не указано")
                                            Icon(
                                              Icons.check,
                                              color: Colors.green,
                                            )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Hero(
                            tag: planets[index].position,
                            child: planets[index].iconImage.contains(".png")
                                ? Image.asset(planets[index].iconImage, height: 200, width: 200,)
                                : SvgPicture.asset(planets[index].iconImage, height: 200, width: 200),
                          ),
                          Positioned(
                            right: 24,
                            bottom: 60,
                            child: Text(
                              planets[index].position.toString(),
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontSize: 200,
                                color: primaryTextColor.withOpacity(0.08),
                                fontWeight: FontWeight.w900,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                child: DefaultButton(
                  text: "Создать",
                  press: () {
                    travelSpots.insert(0,
                      TravelSpot(
                        users: users..shuffle(),
                        name: "Программист-тестировщик",
                        image: "assets/test.png",
                        date: DateTime(2020, 10, 15),
                      ),
                    );
                    print(travelSpots);
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}