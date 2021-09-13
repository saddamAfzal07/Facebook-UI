import 'dart:ui';

import 'package:flutter/material.dart';

class Drawerbox extends StatelessWidget {
  const Drawerbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 100,
              child: DrawerHeader(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back),
                    // splashColor: Colors.transparent,
                    // highlightColor: Colors.transparent,
                  ),
                  Text(
                    "Menu",
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    child:
                        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  )
                ],
              )),
            ),
            Expanded(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/user/sonam.jpg"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
