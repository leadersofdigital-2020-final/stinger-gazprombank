import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../constants.dart';
import '../../../../models/product.dart';
import '../../../../size_config.dart';
import 'product_info.dart';
import 'product_description.dart';

class Soskatel extends StatelessWidget {
  final Product product;
// Thats means we have to  pass it
  const Soskatel({Key key, @required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;
    return Scaffold(
      appBar: buildAppBar(context),
      body: Container(
          decoration: BoxDecoration(
            // image: DecorationImage(
            //   image: AssetImage("assets/Magical_World.png"),
            //     fit: BoxFit.cover
            // ),
              gradient: LinearGradient(
                  colors: [gradientStartColor, gradientEndColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.0, 0.7])),
          child: SizedBox(
            width: double.infinity,
            height: SizeConfig.orientation == Orientation.landscape
                ? SizeConfig.screenWidth
                : SizeConfig.screenHeight - AppBar().preferredSize.height,
            child: Stack(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ProductInfo(product: product),
                Positioned(
                  top: defaultSize * 30,
                  left: 0,
                  right: 0,
                  child: ProductDescription(
                    product: product,
                    press: () {},
                  ),
                ),
                Positioned(
                  top: defaultSize - 90,
                  right: -defaultSize * 7.5,
                  child: Hero(
                    tag: product.id,
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.cover,
                      height: defaultSize * 37.8, //378
                      width: defaultSize * 36.4,
                    ),
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/arrow-long-left.svg"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/bag.svg"),
          onPressed: () {},
        ),
        SizedBox(width: SizeConfig.defaultSize),
      ],
      elevation: 0.0,
      backgroundColor: gradientStartColor,
    );
  }
}