import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class messagemodel {
  String avatorpic;
  String name;
  String date;
  Icon available;
  messagemodel(
      {required this.avatorpic,
      required this.available,
      required this.name,
      required this.date});
  static Icon online = Icon(
    Icons.phone_android_outlined,
    color: Colors.green,
    size: 18,
  );
  static Icon offline = Icon(
    Icons.phone_android_outlined,
    color: Colors.black,
    size: 18,
  );
}

List<messagemodel> messagelist = [
  messagemodel(
      avatorpic: "assets/user/u9.jpg",
      available: messagemodel.online,
      name: "janny",
      date: "10:24"),
  messagemodel(
      avatorpic: "assets/user/u1.jpg",
      available: messagemodel.offline,
      name: "lackash",
      date: "11:44"),
  messagemodel(
      avatorpic: "assets/user/u2.jpg",
      available: messagemodel.offline,
      name: "jon",
      date: "08:22"),
  messagemodel(
      avatorpic: "assets/user/u5.jpg",
      available: messagemodel.online,
      name: "auz",
      date: "07:24"),
  messagemodel(
      avatorpic: "assets/user/u2.jpg",
      available: messagemodel.online,
      name: "janny",
      date: "10:24"),
  messagemodel(
      avatorpic: "assets/user/u7.jpg",
      available: messagemodel.online,
      name: "janny",
      date: "10:24"),
  messagemodel(
      avatorpic: "assets/user/u10.jpg",
      available: messagemodel.online,
      name: "janny",
      date: "10:24"),
  messagemodel(
      avatorpic: "assets/user/u9.jpg",
      available: messagemodel.online,
      name: "janny",
      date: "10:24"),
  messagemodel(
      avatorpic: "assets/user/u9.jpg",
      available: messagemodel.online,
      name: "janny",
      date: "10:24"),
  messagemodel(
      avatorpic: "assets/user/u9.jpg",
      available: messagemodel.online,
      name: "janny",
      date: "10:24"),
  messagemodel(
      avatorpic: "assets/user/u9.jpg",
      available: messagemodel.online,
      name: "janny",
      date: "10:24"),
  messagemodel(
      avatorpic: "assets/user/u9.jpg",
      available: messagemodel.online,
      name: "janny",
      date: "10:24"),
];
