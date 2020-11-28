import 'package:flutter/material.dart';
import '../../../../models/movie.dart';
import 'backdrop_rating.dart';
import 'title_duration_and_fav_btn.dart';
import 'genres.dart';
import '../../../../constants.dart';
import 'cast_and_crew.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;

  const DetailsScreen({Key key, this.movie}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            BackdropAndRating(size: size, movie: movie),
            SizedBox(height: kDefaultPadding / 2),
            TitleDurationAndFabBtn(movie: movie),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: <Widget>[
                  Text(
                    "Математический",
                    style: TextStyle(color: kTextLightColor),
                  ),
                  Icon(Icons.arrow_forward_ios),
                  Text(
                    "Информационная безопасность",
                    style: TextStyle(color: kTextLightColor),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20, bottom: 15),
              child: Text(
                fullValue,
                style: TextStyle(color: kTextLightColor),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Условия работы",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            Genres(genra: ["Социальный пакет", "ДМС", "Agile подход"]),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Требования",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            Genres(genra: ["Знание Python", "Знание SQL"]),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: kDefaultPadding / 2,
                horizontal: kDefaultPadding,
              ),
              child: Text(
                "Задачи",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Text(
                movie.plot,
                style: TextStyle(
                  color: Color(0xFF737599),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: kDefaultPadding / 2,
                horizontal: kDefaultPadding,
              ),
              child: Text(
                "Вопросы",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Text(
                movie.plot1,
                style: TextStyle(
                  color: Color(0xFF737599),
                ),
              ),
            ),
            CastAndCrew(casts: movie.cast),
          ],
        ),
      ),
    );
  }
}