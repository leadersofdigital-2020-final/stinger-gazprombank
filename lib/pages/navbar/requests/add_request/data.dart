class PlanetInfo {
  final int position;
  final String name;
  final String name2;
  final String iconImage;
  final String description;
  final List<String> images;
  final List<String> images2;

  PlanetInfo(
      this.position, {
        this.name,
        this.name2,
        this.iconImage,
        this.description,
        this.images,
        this.images2
      });
}

List<String> descriptions = [
  "Не указано",
  "Не указано",
  "Не указано",
  "Не указано",
  "Не указано",
  "Не указано",
  "Не указано",
  "Не указано",
  "Не указано",
  "Не указано",
  "Не указано",
];

List<PlanetInfo> planets = [
  PlanetInfo(1,
      name: 'Город',
      name2: 'Введите город',
      iconImage: 'assets/city.svg',
      description:
      "Не указано",
      images: [
        'https://cdn.pixabay.com/photo/2013/07/18/10/57/mercury-163610_1280.jpg',
        'https://cdn.pixabay.com/photo/2014/07/01/11/38/planet-381127_1280.jpg',
        'https://cdn.pixabay.com/photo/2015/06/26/18/48/mercury-822825_1280.png',
        'https://image.shutterstock.com/image-illustration/mercury-high-resolution-images-presents-600w-367615301.jpg'
      ]),
  PlanetInfo(2,
      name: 'Название вакансии',
      name2: 'Введите название вакансии',
      iconImage: 'assets/python_logo.png',
      description:
      "Не указано",
      images: [
        'assets/images/python.png',
        'assets/testing.svg',
        'assets/images/js.png',
        'assets/frontend.svg'
      ],
      images2: [
        'Программист Python',
        'Программист-тестировщик',
        'Программист JS',
        'Frontend Developer'
      ]
  ),
  PlanetInfo(3,
      name: 'Тип занятости',
      name2: 'Выберите блоки',
      iconImage: 'assets/time.svg',
      description:
      "Не указано",
      images: [
        'assets/1.svg',
        'assets/2.svg',
        'assets/3.svg',
        'assets/4.svg'
      ],
images2: [
'Полная занятость',
'Частичная занятость',
'Проектная работа',
'Стажировка'
]),
  PlanetInfo(4,
      name: 'График работы',
      name2: 'Выберите блоки',
      iconImage: 'assets/chart.svg',
      description:
      "Не указано",
      images: [
        "assets/1.svg",
        "assets/2.svg",
        "assets/3.svg",
        "assets/4.svg"
      ],
images2: [
'5/2',
'2/2',
'40 часов в неделю',
'20 часов в неделю'
]),
  PlanetInfo(5,
      name: 'Образование',
      name2: 'Выберите факультет и направление',
      iconImage: 'assets/education.svg',
      description:
      "Не указано",
      images: [
      ]),
  PlanetInfo(6,
      name: 'Ключевые навыки',
      name2: 'Введите всё, что посчитаете нужным',
      iconImage: 'assets/react.svg',
      description:
      "Не указано",
      images: [
        "assets/images/python.png",
        "assets/tcpip.png",
        "assets/git.png"
      ],
      images2: [
        "Python",
        "TCP/IP стэк",
        "Git"
      ]
  ),
  PlanetInfo(7,
      name: 'Заработная плата',
      name2: 'Выберите минимальную зарплату',
      iconImage: 'assets/money.svg',
      description:
      "Не указано",
      images: []),
  PlanetInfo(8,
      name: 'Условия работы',
      name2: 'Ничего не вводите, просто скролльте готовые блоки и отмечайте их галочками',
      iconImage: 'assets/interview.svg',
      description:
      "Не указано",
      images: [
        "assets/social.svg",
        "assets/medical.svg",
        "assets/office.svg",
        "assets/car.svg",
        "assets/agile.svg",
        "assets/gym.svg"
      ],
    images2: [
      "Социальный пакет",
      "ДМС",
      "Офис А класса",
      "Наличие парковки",
      "Agile подход",
      "Спортзал"
    ],
  ),
  PlanetInfo(9,
      name: 'Требования',
      name2: 'Вводите текстом, либо отмечайте галочками',
      iconImage: 'assets/Java_logo.png',
      description:
      "Не указано",
      images: [
        "assets/images/python.png",
        "assets/sql.svg"
      ],
    images2: [
      "Знание Python",
      "Знание SQL"
    ]
  ),
  PlanetInfo(10,
      name: 'Задачи',
      name2: 'Введите текстом',
      iconImage: 'assets/task.svg',
      description:
      "Не указано",
      images: []),
  PlanetInfo(11,
      name: 'Вопросы',
      name2: 'Введите текстом',
      iconImage: 'assets/question.svg',
      description:
      "Не указано",
      images: []),
];