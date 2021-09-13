import 'package:facebook_ui/Model/friendsmodel.dart';
import 'package:flutter/material.dart';

class friendspage extends StatefulWidget {
  const friendspage({Key? key}) : super(key: key);

  @override
  _friendspageState createState() => _friendspageState();
}

class _friendspageState extends State<friendspage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Friends",
                  style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: () {},
                          icon: Icon(
                            Icons.person,
                            color: Colors.green,
                          )),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onPressed: () {},
                          icon: Icon(
                            Icons.people,
                            color: Colors.redAccent,
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
          Divider(),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: friendslist.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      print("User profile");
                    },
                    leading: CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      backgroundImage: AssetImage(friendslist[index].avatorpic),
                    ),
                    title: Text(
                      friendslist[index].name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                    trailing: Wrap(
                      spacing: 10.0,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text("Add Friend",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )),
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.blue,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10)),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Remove",
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.grey,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
