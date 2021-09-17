import 'package:facebook_ui/Pages/homepage.dart';
import 'package:facebook_ui/widgets.dart/mainmenutab.dart';
import 'package:facebook_ui/widgets.dart/menubar.dart';
import 'package:facebook_ui/widgets.dart/post.dart';
import 'package:facebook_ui/widgets.dart/postbar.dart';
import 'package:facebook_ui/widgets.dart/storybar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Facebook",
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 2,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  )),
              Text(
                "Sonam Sharma",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: ClipRRect(
                      child: Image.asset("assets/post/bird.jpg",
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 135,
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 60,
                          backgroundImage: AssetImage("assets/user/sonam.jpg"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Papa Ki Pari",
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.add_circle,
                              color: Colors.white,
                            ),
                            Text(
                              "Add a Story",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5)),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(
                              Icons.edit,
                              color: Colors.black,
                            ),
                            Text(
                              "Edit Profile",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.grey.shade400,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5)),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    spacing: 20,
                    children: [
                      Icon(Icons.school),
                      Text(
                        "NATIONAL College Of Mian Channu",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    spacing: 20,
                    children: [
                      Icon(Icons.group_add),
                      Text(
                        "Single",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    spacing: 20,
                    children: [
                      Icon(Icons.info),
                      Text(
                        "About",
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Friends",
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.w700)),
                        Text("Find Friends",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w700)),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8.0),
                    child: Column(
                      children: [
                        postbar(),
                        Divider(
                          thickness: 1,
                          color: Colors.black26,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: menubar(),
                        ),
                        Divider(
                          thickness: 5,
                          color: Colors.black26,
                        ),
                        storbar(),
                        Divider(
                          thickness: 1,
                          color: Colors.black26,
                        ),
                        Post(),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
