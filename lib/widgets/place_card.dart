import 'package:flutter/material.dart';
import '../models/travel_spot.dart';
import '../models/user.dart';
import '../constants.dart';
import '../size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../pages/navbar/requests/details/details.dart';
import '../models/movie.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    Key key,
    @required this.travelSport,
    this.isFullCard = false,
    this.isTravellers = true,
    @required this.press,
  }) : super(key: key);

  final TravelSpot travelSport;
  final bool isFullCard, isTravellers;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetailsScreen(movie: movies[0],)),
      ),
      child: SizedBox(
        width: getProportionateScreenWidth(isFullCard ? 158 : 137),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: isFullCard ? 1.09 : 1.29,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  image: DecorationImage(
                      image: AssetImage(travelSport.image), fit: BoxFit.cover),
                ),
              ),
            ),
            Container(
              width: getProportionateScreenWidth(isFullCard ? 158 : 137),
              padding: EdgeInsets.all(
                getProportionateScreenWidth(kDefaultPadding),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [kDefualtShadow],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    travelSport.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: isFullCard ? 17 : 12,
                    ),
                  ),
                  if (isFullCard)
                    Text(
                      travelSport.date.day.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  if (isFullCard)
                    Text(
                      "заявок",
                    ),
                  VerticalSpacing(of: 10),
                  isTravellers ? Travelers(
                    users: travelSport.users,
                  ) : Container()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Travelers extends StatelessWidget {
  const Travelers({
    Key key,
    @required this.users,
  }) : super(key: key);

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    int totalUser = 0;
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenWidth(30),
      child: Stack(
        alignment: Alignment.center,
        children: [
          ...List.generate(
            users.length,
                (index) {
              totalUser++;
              return Positioned(
                left: (22 * index).toDouble(),
                child: buildTravelerFace(index),
              );
            },
          ),
          Positioned(
            left: (22 * totalUser).toDouble(),
            child: Container(
              height: getProportionateScreenWidth(28),
              width: getProportionateScreenWidth(28),
              decoration: BoxDecoration(
                color: kPrimaryColor,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.add, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  ClipOval buildTravelerFace(int index) {
    return ClipOval(
      child: users[index].image.contains(".svg")
      ? SvgPicture.asset(
        users[index].image,
        height: getProportionateScreenWidth(28),
        width: getProportionateScreenWidth(28),
        fit: BoxFit.cover,
      )
          : Image.asset(
        users[index].image,
        height: getProportionateScreenWidth(28),
        width: getProportionateScreenWidth(28),
        fit: BoxFit.cover,
      ),
    );
  }
}