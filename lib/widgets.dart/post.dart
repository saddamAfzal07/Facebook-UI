import 'package:facebook_ui/Model/postmodel.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          for (int i = 0; i < postlist.length; i++) ...[
            Row(
              children: [
                IconButton(
                  iconSize: 60,
                  onPressed: () {},
                  icon: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage(
                      postlist[i].profile,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        postlist[i].username,
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      Wrap(
                        // alignment: WrapAlignment.start,
                        spacing: 5.0,
                        children: [
                          Text(
                            postlist[i].time,
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                          Icon(Icons.public),
                        ],
                      )
                    ],
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      postlist[i].description,
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Image.asset(postlist[i].image)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.thumb_up)),
                    Text(
                      postlist[i].likes,
                      style: TextStyle(fontSize: 18.0, color: Colors.black),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.message)),
                    Text(
                      postlist[i].comments,
                      style: TextStyle(fontSize: 18.0, color: Colors.black),
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.share)),
                    Text(
                      postlist[i].shares,
                      style: TextStyle(fontSize: 18.0, color: Colors.black),
                    ),
                  ],
                ),
              ],
            )
          ]
        ],
      ),
    );
  }
}
