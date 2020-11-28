class Movie {
  final int id, numOfRatings, criticsReview, metascoreRating;
  final double rating;
  final List<String> genra;
  final String plot, title, poster, backdrop, year, plot1;
  final List<Map> cast;

  Movie({
    this.poster,
    this.backdrop,
    this.title,
    this.id,
    this.year,
    this.numOfRatings,
    this.criticsReview,
    this.metascoreRating,
    this.rating,
    this.genra,
    this.plot,
    this.plot1,
    this.cast,
  });
}

// our demo data movie data
List<Movie> movies = [
  Movie(
    id: 1,
    title: "Программист-тестировщик",
    year: "Москва",
    poster: "assets/test.png",
    backdrop: "assets/test.png",
    numOfRatings: 150212,
    rating: 7.3,
    criticsReview: 50,
    metascoreRating: 12,
    genra: ["Математический", "Информационная безопасность"],
    plot: "Участие в проектировании систем",
    plot1: "Почему вы считаете, что впишитесь в нашу команду?",
    cast: [
      {
        "orginalName": "Джеймс",
        "movieName": "SQL",
        "image": "assets/images/actor_1.png",
      },
      {
        "orginalName": "Руслан",
        "movieName": "Flutter",
        "image": "assets/images/John.png",
      },
      {
        "orginalName": "Кристиан Бейл",
        "movieName": "Программист-тестировщик",
        "image": "assets/images/actor_3.png",
      },
      {
        "orginalName": "Кристина",
        "movieName": "Программист-тестировщик",
        "image": "assets/images/actor_4.png",
      },
    ],
  ),
  Movie(
    id: 2,
    title: "Ford v Ferrari ",
    year: "Москва",
    poster: "assets/images/poster_2.jpg",
    backdrop: "assets/images/backdrop_2.jpg",
    numOfRatings: 150212,
    rating: 8.2,
    criticsReview: 50,
    metascoreRating: 76,
    genra: ["Action", "Biography", "Drama"],
    plot: plotText,
    cast: [
      {
        "orginalName": "James Mangold",
        "movieName": "Director",
        "image": "assets/images/actor_1.png",
      },
      {
        "orginalName": "Matt Damon",
        "movieName": "Carroll",
        "image": "assets/images/actor_2.png",
      },
      {
        "orginalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": "assets/images/actor_3.png",
      },
      {
        "orginalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": "assets/images/actor_4.png",
      },
    ],
  ),
  Movie(
    id: 1,
    title: "Onward",
    year: "Москва",
    poster: "assets/images/poster_3.jpg",
    backdrop: "assets/images/backdrop_3.jpg",
    numOfRatings: 150212,
    rating: 7.6,
    criticsReview: 50,
    metascoreRating: 79,
    genra: ["Action", "Drama"],
    plot: plotText,
    cast: [
      {
        "orginalName": "James Mangold",
        "movieName": "Director",
        "image": "assets/images/actor_1.png",
      },
      {
        "orginalName": "Matt Damon",
        "movieName": "Carroll",
        "image": "assets/images/actor_2.png",
      },
      {
        "orginalName": "Christian Bale",
        "movieName": "Ken Miles",
        "image": "assets/images/actor_3.png",
      },
      {
        "orginalName": "Caitriona Balfe",
        "movieName": "Mollie",
        "image": "assets/images/actor_4.png",
      },
    ],
  ),
];

String plotText =
    "American car designer Carroll Shelby and driver Kn Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order.";