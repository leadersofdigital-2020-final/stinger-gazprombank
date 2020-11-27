import 'package:flutter/material.dart';
import '../../../size_config.dart';
import '../../../models/travel_spot.dart';
import '../../../widgets/place_card.dart';
import '../../../constants.dart';

class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
              Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
            "Библиотека заявок",
          style: TextStyle(
            color: Colors.black
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: SizedBox(
        width: SizeConfig.screenWidth,
        child: Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                runSpacing: 25,
                children: [
                  ...List.generate(
                    travelSpots.length,
                        (index) => PlaceCard(
                      travelSport: travelSpots[index],
                      isFullCard: true,
                      press: () {},
                    ),
                  ),
                  AddNewPlaceCard(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AddNewPlaceCard extends StatelessWidget {
  const AddNewPlaceCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(350),
      width: getProportionateScreenWidth(158),
      decoration: BoxDecoration(
        color: Color(0xFF6A6C93).withOpacity(0.09),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2,
          color: Color(0xFFEBE8F6),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: getProportionateScreenWidth(53),
            width: getProportionateScreenWidth(53),
            child: FlatButton(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(60),
              ),
              color: kPrimaryColor,
              onPressed: () {},
              child: Icon(
                Icons.add,
                size: getProportionateScreenWidth(35),
                color: Colors.white,
              ),
            ),
          ),
          VerticalSpacing(of: 10),
          Text(
            "Создать новую папку",
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}