import 'dart:ui';

import 'package:facebook_ui/Pages/Messagespage.dart';
import 'package:facebook_ui/Pages/friendspage.dart';
import 'package:facebook_ui/Pages/market.dart';
import 'package:facebook_ui/Pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Drawerbox extends StatelessWidget {
  const Drawerbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return Future.value(false);
      },
      child: Container(
        child: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 120,
                child: DrawerHeader(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.arrow_back),
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                      Text(
                        "Menu",
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: IconButton(
                            onPressed: () {}, icon: Icon(Icons.search)),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListView(children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("assets/user/sonam.jpg"),
                    ),
                    title: Text(
                      "Sonam Sharma",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text("View Your Profile"),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile()));
                    },
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.coronavirus_outlined,
                      color: Colors.redAccent,
                    ),
                    title: Text(
                      "Covid 19 Information",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.message_outlined,
                      color: Colors.green,
                    ),
                    title: Text(
                      "Messages",
                      style: TextStyle(fontSize: 14),
                    ),
                    onTap: () {
                      print("Messages");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Material(
                                    child: Container(
                                        margin:
                                            EdgeInsets.symmetric(vertical: 50),
                                        child: Messages()),
                                  )));
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.people,
                      color: Colors.blue,
                    ),
                    title: Text(
                      "Friends",
                      style: TextStyle(fontSize: 14),
                    ),
                    onTap: () {
                      print("Friends");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Material(
                                    child: Container(
                                        margin:
                                            EdgeInsets.symmetric(vertical: 50),
                                        child: friendspage()),
                                  )));
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.groups,
                      color: Colors.blue,
                    ),
                    title: Text(
                      "Groups",
                      style: TextStyle(fontSize: 14),
                    ),
                    onTap: () {
                      print("Group");
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.shopping_bag,
                      color: Colors.blueAccent,
                    ),
                    title: Text(
                      "Market Place",
                      style: TextStyle(fontSize: 14),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Material(
                                    child: Container(
                                        margin:
                                            EdgeInsets.symmetric(vertical: 20),
                                        child: Market()),
                                  )));
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.grey,
                    ),
                    title: Text(
                      "Settings",
                      style: TextStyle(fontSize: 14),
                    ),
                    onTap: () {
                      print("Settings");
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.privacy_tip,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      "Privacy",
                      style: TextStyle(fontSize: 14),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.help,
                      color: Colors.green,
                    ),
                    title: Text(
                      "Help",
                      style: TextStyle(fontSize: 14),
                    ),
                    onTap: () {
                      print("Help");
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.red,
                    ),
                    title: Text(
                      "Log out",
                      style: TextStyle(fontSize: 14),
                    ),
                    onTap: () {
                      print("Log out");
                    },
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
