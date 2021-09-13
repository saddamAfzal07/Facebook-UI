import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class videomodel {
  final VoidCallback avatorOnPressed;
  final String avatorimage;
  final String name;
  final String time;
  final VoidCallback moreOnPressed;
  final String videoPostTitle;
  final String? videoPostLink;
  final VoidCallback likeOnPressed;
  final VoidCallback cmtOnPressed;
  final VoidCallback shareOnPressed;
  videomodel(
      {required this.avatorOnPressed,
      required this.avatorimage,
      required this.name,
      required this.time,
      required this.moreOnPressed,
      required this.videoPostTitle,
      required this.videoPostLink,
      required this.likeOnPressed,
      required this.cmtOnPressed,
      required this.shareOnPressed});
}

List<videomodel> videolist = [
  videomodel(
    avatorOnPressed: () {
      print("print avator image");
    },
    avatorimage: "assets/user/u2.jpg",
    name: "Ahirlod",
    time: "just Now",
    moreOnPressed: () {
      print("print more");
    },
    videoPostLink: YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=IEyAWqYFqW0&t=8827s"),
    videoPostTitle: "What is Lorem ipsum Lorem  book it has?",
    likeOnPressed: () {
      print("print likes");
    },
    cmtOnPressed: () {
      print("print cmt");
    },
    shareOnPressed: () {
      print("print share");
    },
  ),
  videomodel(
    avatorOnPressed: () {
      print("print avator image");
    },
    avatorimage: "assets/user/u4.jpg",
    name: "Ahirlod",
    time: "just Now",
    moreOnPressed: () {
      print("print more");
    },
    videoPostLink: YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=muds1gFUTN8"),
    videoPostTitle: "What is Lorem it has?",
    likeOnPressed: () {
      print("print likes");
    },
    cmtOnPressed: () {
      print("print cmt");
    },
    shareOnPressed: () {
      print("print share");
    },
  ),
  videomodel(
    avatorOnPressed: () {
      print("print avator image");
    },
    avatorimage: "assets/user/u7.jpg",
    name: "Ahirlod",
    time: "just Now",
    moreOnPressed: () {
      print("print more");
    },
    videoPostLink: YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=IEyAWqYFqW0&t=8827s"),
    videoPostTitle: "What is Lorem ipsum Lorem ipsum",
    likeOnPressed: () {
      print("print likes");
    },
    cmtOnPressed: () {
      print("print cmt");
    },
    shareOnPressed: () {
      print("print share");
    },
  )
];
