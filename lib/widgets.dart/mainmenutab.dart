import 'package:facebook_ui/Pages/Messagespage.dart';
import 'package:facebook_ui/Pages/friendspage.dart';
import 'package:facebook_ui/Pages/homepage.dart';
import 'package:facebook_ui/Pages/market.dart';
import 'package:facebook_ui/Pages/notificationpage.dart';
import 'package:facebook_ui/Pages/videopage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:badges/badges.dart';

import 'Drawer.dart';

class menutab extends StatefulWidget {
  const menutab({Key? key}) : super(key: key);

  @override
  _menutabState createState() => _menutabState();
}

class _menutabState extends State<menutab> with SingleTickerProviderStateMixin {
  TabController? tabController;
  final List<Tab> TabMenu = <Tab>[
    Tab(
      icon: Icon(Icons.home_outlined),
    ),
    Tab(
      icon: Icon(Icons.people_outlined),
    ),
    Tab(
      icon: Icon(Icons.message_outlined),
    ),
    Tab(
      child: Badge(
        position: BadgePosition(end: -10),
        badgeContent: Text(
          '3',
          style: TextStyle(color: Colors.white),
        ),
        child: Icon(Icons.notifications_outlined),
      ),
    ),
    Tab(
      icon: Icon(Icons.video_library),
    ),
    Tab(
      icon: Icon(Icons.shopping_bag_outlined),
    ),
  ];
  final _scafoldkey = GlobalKey<ScaffoldState>();

  Future<bool> shutdown() async {
    if (tabController?.index == 0) {
      SystemNavigator.pop();
    } else {
      Future.delayed(Duration(milliseconds: 200), () {
        tabController?.index = 0;
      });
    }

    return tabController?.index == 0;
  }

  @override
  void initState() {
    super.initState();
    tabController =
        TabController(length: TabMenu.length, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: shutdown,
      child: Scaffold(
        key: _scafoldkey,
        appBar: AppBar(
          title: Text(
            "facebook",
            style: TextStyle(
              fontFamily: 'klavika',
              fontSize: 34,
              fontWeight: FontWeight.bold,
              // color: Colors.blue[700],
            ),
          ),
          actions: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade300,
              ),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                ),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.shade300,
              ),
              child: IconButton(
                onPressed: () {
                  _scafoldkey.currentState!.openEndDrawer();
                },
                icon: Icon(
                  Icons.menu,
                ),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
            )
          ],
          bottom: TabBar(
            tabs: TabMenu,
            indicatorColor: Colors.grey,
            controller: tabController,
          ),
        ),
        endDrawer: Drawerbox(),
        body: TabBarView(controller: tabController, children: [
          Homepage(),
          friendspage(),
          Messages(),
          notifications(),
          videopage(),
          // VideoPage(),
          Market(),
        ]),
      ),
    );
  }
}
