
import 'package:flutter/material.dart';

class User {
  final String name, image;

  User({@required this.name, @required this.image});
}

// Demo List of Top Travelers
List<User> topTravelers = [user1, user2, user3, user4];

// demo user
User user1 = User(name: "Евгений", image: "assets/images/женя.JPG");
User user2 = User(name: "Дык", image: "assets/images/дык.JPG");
User user3 = User(name: "Алексей", image: "assets/images/ава.jpg");
User user4 = User(name: "Павел", image: "assets/images/паша.JPG");

User user5 = User(name: "Социальный пакет", image: "assets/social.svg");
User user6 = User(name: "ДМС", image: "assets/medical.svg");
User user7 = User(name: "Офис А класса", image: "assets/office.svg");
User user8 = User(name: "Наличие парковки", image: "assets/car.svg");
User user9 = User(name: "Agile подход", image: "assets/agile.svg");
User user10 = User(name: "Спортзал", image: "assets/gym.svg");