import 'package:facebook_ui/Model/notification_model.dart';
import 'package:flutter/material.dart';

class notifications extends StatefulWidget {
  const notifications({Key? key}) : super(key: key);

  @override
  _notificationsState createState() => _notificationsState();
}

class _notificationsState extends State<notifications> {
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
                  "Notifications",
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
                          tooltip: "Mark All Notifications as Read!",
                          onPressed: () {},
                          icon: Icon(
                            Icons.check_circle,

                            // color: Colors.green,
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
                itemCount: notificationlist.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      print("User profile");
                    },
                    leading: CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      backgroundImage:
                          AssetImage(notificationlist[index].avatorpic),
                    ),
                    title: Text(
                      notificationlist[index].name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                    subtitle: Text(
                      notificationlist[index].date,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                    trailing: IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () {},
                      icon: Icon(Icons.more_vert),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
