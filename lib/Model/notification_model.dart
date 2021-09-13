import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class notificationmodel {
  String avatorpic;
  String name;
  String date;

  notificationmodel(
      {required this.avatorpic, required this.name, required this.date});
  // static Icon online = Icon(
  //   Icons.phone_android_outlined,
  //   color: Colors.green,
  //   size: 18,
  // );
  // static Icon offline = Icon(
  //   Icons.phone_android_outlined,
  //   color: Colors.black,
  //   size: 18,
  // );
}

List<notificationmodel> notificationlist = [
  notificationmodel(
      avatorpic: "assets/user/u9.jpg", name: "janny", date: "10:24"),
  notificationmodel(
      avatorpic: "assets/user/u1.jpg", name: "lackash", date: "11:44"),
  notificationmodel(
      avatorpic: "assets/user/u2.jpg", name: "jon", date: "08:22"),
  notificationmodel(
      avatorpic: "assets/user/u5.jpg", name: "auz", date: "07:24"),
  notificationmodel(
      avatorpic: "assets/user/u2.jpg", name: "janny", date: "10:24"),
  notificationmodel(
      avatorpic: "assets/user/u7.jpg", name: "janny", date: "10:24"),
  notificationmodel(
      avatorpic: "assets/user/u10.jpg", name: "janny", date: "10:24"),
  notificationmodel(
      avatorpic: "assets/user/u9.jpg", name: "janny", date: "10:24"),
  notificationmodel(
      avatorpic: "assets/user/u9.jpg", name: "janny", date: "10:24"),
  notificationmodel(
      avatorpic: "assets/user/u9.jpg", name: "janny", date: "10:24"),
  notificationmodel(
      avatorpic: "assets/user/u9.jpg", name: "janny", date: "10:24"),
  notificationmodel(
      avatorpic: "assets/user/u9.jpg", name: "janny", date: "10:24"),
];
