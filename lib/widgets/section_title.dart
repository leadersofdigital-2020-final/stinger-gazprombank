import 'package:flutter/material.dart';
import '../constants.dart';
import '../size_config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
    @required this.title,
    @required this.press,
    this.isAll,
  }) : super(key: key);

  final String title;
  final bool isAll;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(kDefaultPadding),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: getProportionateScreenWidth(16),
            ),
          ),
          Spacer(),
          if (isAll)
            GestureDetector(
              onTap: press,
              child: Text("Все"),
            ),
        ],
      ),
    );
  }
}