import 'package:facebook_ui/widgets.dart/menubar.dart';
import 'package:facebook_ui/widgets.dart/post.dart';
import 'package:facebook_ui/widgets.dart/postbar.dart';
import 'package:facebook_ui/widgets.dart/storybar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
    );
  }
}
