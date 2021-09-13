import 'package:flutter/widgets.dart';

class storymodel {
  final VoidCallback ontap;
  final String pic;
  final String name;
  storymodel({required this.ontap, required this.name, required this.pic});
}

List<storymodel> datastorymodel = [
  storymodel(
      ontap: () {
        print("Shasha Grey");
      },
      name: "Shasha Grey",
      pic: "assets/story/s1.jpg"),
  storymodel(
      ontap: () {
        print("Tori Black");
      },
      name: "Tori Black",
      pic: "assets/story/s2.jpg"),
  storymodel(
      ontap: () {
        print("Johnny");
      },
      name: "Johnny",
      pic: "assets/story/s3.jpg"),
  storymodel(
      ontap: () {
        print("Shasha Grey");
      },
      name: "Mr X",
      pic: "assets/story/s4.jpg"),
  storymodel(ontap: () {}, name: "Honey", pic: "assets/story/s5.jpg"),
];
