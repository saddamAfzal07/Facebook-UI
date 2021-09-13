import 'package:facebook_ui/Model/messagemodel.dart';
import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
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
                  "Messages",
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
                            Icons.message,
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
                            Icons.settings,
                            color: Colors.black,
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
                itemCount: messagelist.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      print("User profile");
                    },
                    leading: CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      backgroundImage: AssetImage(messagelist[index].avatorpic),
                    ),
                    title: Text(
                      messagelist[index].name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                    subtitle: Text(
                      messagelist[index].date,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
                    ),
                    trailing: IconButton(
                        onPressed: () {}, icon: messagelist[index].available),
                  );
                }),
          )
        ],
      ),
    );
  }
}
