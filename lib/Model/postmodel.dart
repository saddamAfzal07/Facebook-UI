import 'dart:math';

class postmodel {
  String profile;
  String username;
  String time;
  String description;
  String image;

  String likes;
  String comments;
  String shares;
  postmodel(
      {required this.profile,
      required this.username,
      required this.comments,
      required this.description,
      required this.image,
      required this.likes,
      required this.time,
      required this.shares});
}

List<postmodel> postlist = [
  postmodel(
      profile: "assets/user/u2.jpg",
      username: "vione",
      comments: "33",
      description:
          "What is Lorem ipsum Lorem ipsum is simply dummy text of the printing and typesetting industry Lorem ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?",
      image: "assets/user/u5.jpg",
      likes: "45",
      time: "1 Hour Ago",
      shares: "2"),
  postmodel(
      profile: "assets/user/u5.jpg",
      username: "john zee",
      comments: "3",
      description:
          "What is Lorem ipsum Lorem ipsum is simply dummy text of the printing and typesetting industry Lorem ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?",
      image: "assets/user/u1.jpg",
      likes: "5",
      time: "1 day Ago",
      shares: "65"),
  postmodel(
      profile: "assets/user/u9.jpg",
      username: "zee",
      comments: "34",
      description:
          "What is Lorem ipsum Lorem ipsum is simply dummy text of the printing and typesetting industry Lorem ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?",
      image: "assets/user/u4.jpg",
      likes: "45",
      time: "1 Hour Ago",
      shares: "54"),
  postmodel(
      profile: "assets/user/u3.jpg",
      username: "sheli",
      comments: "08",
      description:
          "What is Lorem ipsum Lorem ipsum is simply dummy text of the printing and typesetting industry Lorem ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?",
      image: "assets/user/u8.jpg",
      likes: "90",
      time: "3 days Ago",
      shares: "20"),
];
