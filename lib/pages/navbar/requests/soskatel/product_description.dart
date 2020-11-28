import 'package:flutter/material.dart';
import '../../../../models/product.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../constants.dart';
import '../../../../size_config.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key key,
    @required this.product,
    this.press,
  }) : super(key: key);

  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Container(
      constraints: BoxConstraints(minHeight: defaultSize * 44),
      padding: EdgeInsets.only(
        top: defaultSize * 9, //90
        left: defaultSize * 2, //20
        right: defaultSize * 2,
      ),
      // height: 500,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(defaultSize * 1.2),
          topRight: Radius.circular(defaultSize * 1.2),
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "5/2",
              style: TextStyle(
                fontSize: defaultSize * 1.6, //16
                fontWeight: FontWeight.bold,
                height: 1.6,
              ),
            ),
            Text(
              product.price,
              style: TextStyle(
                fontSize: defaultSize * 1.6, //16
                fontWeight: FontWeight.bold,
                height: 1.6,
              ),
            ),
            SizedBox(height: defaultSize * 2), //20
            Text("Физический факультет", style: TextStyle(
              fontSize: defaultSize * 1.6, //16
              fontWeight: FontWeight.bold,
              height: 1.6,
            ),),
            Text("Python, Flutter", style: TextStyle(
              fontSize: defaultSize * 1.6, //16
              fontWeight: FontWeight.bold,
              height: 1.6,
            ),),
            Text("от 300000руб. до 400000руб.", style: TextStyle(
              fontSize: defaultSize * 1.6, //16
              fontWeight: FontWeight.bold,
              height: 1.6,
            ),),
            Text("Спортзал", style: TextStyle(
              fontSize: defaultSize * 1.6, //16
              fontWeight: FontWeight.bold,
              height: 1.6,
            ),),
            Row(
              children: <Widget>[
                buildColorBox(
                  defaultSize,
                  color: Color(0xFF7BA275),
                  isActive: true,
                ),
                buildColorBox(
                  defaultSize,
                  color: Color(0xFFD7D7D7),
                ),
                buildColorBox(
                  defaultSize,
                  color: kTextColor,
                ),
              ],
            ),
            SizedBox(height: defaultSize * 3),
            Text(
              product.subTitle,
              style: TextStyle(
                fontSize: defaultSize * 1.8,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              product.description,
              style: TextStyle(
                color: kTextColor.withOpacity(0.7),
                height: 1.5,
              ),
            ),
            SizedBox(height: defaultSize * 3),
            SizedBox(
              width: double.infinity,
              child: FlatButton(
                padding: EdgeInsets.all(defaultSize * 1.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                color: kPrimaryColor,
                onPressed: press,
                child: Text(
                  "Позвонить",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: defaultSize * 1.6,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildColorBox(double defaultSize,
      {Color color, bool isActive = false}) {
    return Container(
      margin: EdgeInsets.only(top: defaultSize, right: defaultSize),
      // For  fixed value we can use cont for better performance
      padding: const EdgeInsets.all(5),
      height: defaultSize * 2.4,
      width: defaultSize * 2.4,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(6),
      ),
      child: isActive ? SvgPicture.asset("assets/icons/check.svg") : SizedBox(),
    );
  }
}