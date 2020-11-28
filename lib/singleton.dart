import 'package:flutter/cupertino.dart';
import 'package:flutter_swiper/flutter_swiper.dart';


class Singleton extends ChangeNotifier {
  PageController pageController = PageController(initialPage: 0);
  SwiperController swiperController = SwiperController();
}