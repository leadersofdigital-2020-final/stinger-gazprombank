import 'circularButton.dart';
import 'productColorSelector.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'dart:math' as math;
import '../../../../constants.dart';
import 'package:share/share.dart';

class Soskatel extends StatefulWidget {
  @override
  _SoskatelState createState() => _SoskatelState();
}

class _SoskatelState extends State<Soskatel> with SingleTickerProviderStateMixin {
  double rating = 4.0;

  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      value: 0.0,
      duration: Duration(seconds: 25),
      upperBound: 1,
      lowerBound: -1,
      vsync: this,
    )..repeat();
  }

  bool isActive = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final String desc =
      "Maxwell sole construction delivers exceptional durability and is resistant to oil,"
      "fat, acid, petrol and alkali; air-cushioned honeycomb";

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFf9f9f7),
      body: Stack(
        children: <Widget>[
          AnimatedBuilder(
            animation: _controller,
            builder: (BuildContext context, Widget child) {
              return ClipPath(
                clipper: DrawClip(_controller.value),
                child: Container(
                  height: size.height * 0.5,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [gradientStartColor, gradientEndColor]),
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 300),
            child: Center(
              child: Image.asset(
                "assets/images/eugene.png",
                width: double.infinity,
                height: height * .7,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFdad9d5),
                  Color(0xFFdcd9d2).withOpacity(.2),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0.0, 0.5],
                tileMode: TileMode.clamp,
              ),
            ),
          ),
          Column(
            children: <Widget>[
              Expanded(
                child: Container(),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                height: ScreenUtil().setHeight(580),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: ScreenUtil().setWidth(400),
                          ),
                          child: Text(
                            "Евгений Жданов",
                            style: TextStyle(
                              fontSize: ScreenUtil().setSp(54),
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Text("от 40000р.",
                              style: TextStyle(
                                fontSize: ScreenUtil().setSp(34),
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: ScreenUtil().setHeight(12),
                            ),
                            Text("до 60000р.",
                                style: TextStyle(
                                  fontSize: ScreenUtil().setSp(36),
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.w700,
                                ))
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(14),
                    ),
                    SmoothStarRating(
                      allowHalfRating: true,
                      onRatingChanged: (v) {
                        rating = v;
                        setState(() {});
                      },
                      starCount: 5,
                      rating: rating,
                      size: 22,
                      color: Colors.black,
                      borderColor: Colors.white,
                      spacing: 0.0,
                    ),
                    SizedBox(
                      height: ScreenUtil().setHeight(24),
                    ),
                    Text(
                      "Проектный менеджер",
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(36),
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ColorSelector(
                          colors: [
                            Color(0xFF201e1f),
                            Color(0xFF919191),
                            Color(0xFFe3d4bf),
                          ],
                        ),
                        CircularButton(
                          color: Colors.white,
                          icon: Icon(
                            isActive ? Icons.favorite : Icons.favorite_border,
                            color: isActive ? Colors.red : Colors.black,
                          ),
                          onPressed: () => setState(() => isActive = !isActive),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: ScreenUtil().setWidth(500),
                          ),
                          child: Text(
                            "Номер телефона: +79200006568",
                            style: TextStyle(
                              fontSize: ScreenUtil().setSp(30),
                              fontFamily: "Montserrat",
                            ),
                          ),
                        ),
                        CircularButton(
                          color: Colors.black,
                          icon: Icon(Icons.call, color: Colors.white),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: ScreenUtil().setWidth(500),
                      ),
                      child: Text(
                        "Этап: 3/5",
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(30),
                          fontFamily: "Montserrat",
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 40,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  onTap: () => Navigator.pop(context),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.share,
                    color: Colors.black,
                  ),
                  onTap: () => _onShare(context),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _onShare(BuildContext context) async {
    // A builder is used to retrieve the context immediately
    // surrounding the RaisedButton.
    //
    // The context's `findRenderObject` returns the first
    // RenderObject in its descendent tree when it's not
    // a RenderObjectWidget. The RaisedButton's RenderObject
    // has its position and size after it's built.
    final RenderBox box = context.findRenderObject();

    await Share.share("да",
        subject: "да",
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);

    // if (imagePaths.isNotEmpty) {
    //   await Share.shareFiles(imagePaths,
    //       text: text,
    //       subject: subject,
    //       sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
    // } else {
    //   await Share.share(text,
    //       subject: subject,
    //       sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
    // }
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var linePaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2.4;

    canvas.drawLine(
        Offset(0, size.height - 4), Offset(size.width, 4), linePaint);
  }

  @override
  bool shouldRepaint(LinePainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(LinePainter oldDelegate) => false;
}

class DrawClip extends CustomClipper<Path> {
  double move = 0;
  double slice = math.pi;
  DrawClip(this.move);
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height * 0.8);
    double xCenter =
        size.width * 0.5 + (size.width * 0.6 + 1) * math.sin(move * slice);
    double yCenter = size.height * 0.8 + 69 * math.cos(move * slice);
    path.quadraticBezierTo(xCenter, yCenter, size.width, size.height * 0.8);

    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}