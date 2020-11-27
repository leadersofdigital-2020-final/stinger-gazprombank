import 'package:flutter/material.dart';
import 'user.dart';

class TravelSpot {
  final String name, image;
  final DateTime date;
  final List<User> users;

  TravelSpot({
    @required this.users,
    @required this.name,
    @required this.image,
    @required this.date,
  });
}

List<TravelSpot> travelSpots = [
  TravelSpot(
    users: users..shuffle(),
    name: "JS",
    image: "assets/images/js.png",
    date: DateTime(2020, 10, 15),
  ),
  TravelSpot(
    users: users..shuffle(),
    name: "Java",
    image: "assets/images/java.jpg",
    date: DateTime(2020, 3, 10),
  ),
  TravelSpot(
    users: users..shuffle(),
    name: "Python",
    image: "assets/images/python.png",
    date: DateTime(2020, 10, 15),
  ),
];

List<User> users = [user1, user2, user3];