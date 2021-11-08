class PageList {
  String image;
  String title;
  String genre;
  String time;
  int review;

  PageList(
      {required this.image,
      required this.title,
      required this.genre,
      required this.time,
      required this.review});
}

List<PageList> pageList = [
  PageList(
    image:
        "https://cdn.pixabay.com/photo/2019/08/28/17/10/people-4437215__340.jpg",
    title: "Gone with the wind",
    genre: "Romatic, Drama",
    time: "2hr 19m",
    review: 4,
  ),
  PageList(
    image:
        "https://cdn.pixabay.com/photo/2019/10/15/21/34/cat-4552983__340.jpg",
    title: "The godfather",
    genre: "Crime, Drama",
    time: "2hr 19m",
    review: 3,
  ),
  PageList(
    image:
        "https://cdn.pixabay.com/photo/2019/08/28/17/10/people-4437215__340.jpg",
    title: "Gone with the wind",
    genre: "Romatic, Drama",
    time: "2hr 19m",
    review: 4,
  ),
  PageList(
    image:
        "https://cdn.pixabay.com/photo/2019/10/15/21/34/cat-4552983__340.jpg",
    title: "The godfather",
    genre: "Crime, Drama",
    time: "2hr 19m",
    review: 3,
  ),
  PageList(
    image:
        "https://cdn.pixabay.com/photo/2019/08/28/17/10/people-4437215__340.jpg",
    title: "Gone with the wind",
    genre: "Romatic, Drama",
    time: "2hr 19m",
    review: 4,
  ),
  PageList(
    image:
        "https://cdn.pixabay.com/photo/2019/10/15/21/34/cat-4552983__340.jpg",
    title: "The godfather",
    genre: "Crime, Drama",
    time: "2hr 19m",
    review: 3,
  ),
];
