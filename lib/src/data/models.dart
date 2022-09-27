class WorkModel {
  final String image, title, shortDate, longDate, link;

  const WorkModel({
    required this.image,
    required this.title,
    required this.shortDate,
    required this.longDate,
    required this.link,
  });

  static const works = [
    WorkModel(
      image: "assets/images/netflix.png",
      title: "Netflix Discover",
      shortDate: "Nov 22",
      longDate: "November 2022",
      link: "https://github.com/devwraithe/netflix",
    ),
    WorkModel(
      image: "assets/images/openweather.png",
      title: "Open Weather",
      shortDate: "Nov 22",
      longDate: "November 2022",
      link: "https://github.com/devwraithe/open_weather",
    ),
    WorkModel(
      image: "assets/images/disneyplus.png",
      title: "Disney Plus",
      shortDate: "Nov 22",
      longDate: "November 2022",
      link: "https://github.com/devwraithe/disney_plus",
    ),
    WorkModel(
      image: "assets/images/parallel37.png",
      title: "Parallel 37",
      shortDate: "Nov 22",
      longDate: "November 2022",
      link: "https://github.com/devwraithe/parallel_37",
    ),
  ];
}
