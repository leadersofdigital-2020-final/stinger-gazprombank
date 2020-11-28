
import 'package:flutter/material.dart';

class User {
  final String name, image;

  User({@required this.name, @required this.image});
}

// Demo List of Top Travelers
List<User> topTravelers = [user1, user2, user3, user4];

// demo user
User user1 = User(name: "Джеймс", image: "assets/images/james.png");
User user2 = User(name: "Руслан", image: "assets/images/John.png");
User user3 = User(name: "Мэрри", image: "assets/images/marry.png");
User user4 = User(name: "Рози", image: "assets/images/rosy.png");

User user5 = User(name: "Социальный пакет", image: "assets/social.svg");
User user6 = User(name: "ДМС", image: "assets/medical.svg");
User user7 = User(name: "Офис А класса", image: "assets/office.svg");
User user8 = User(name: "Наличие парковки", image: "assets/car.svg");
User user9 = User(name: "Agile подход", image: "assets/agile.svg");
User user10 = User(name: "Спортзал", image: "assets/gym.svg");