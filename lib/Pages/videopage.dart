import 'package:facebook_ui/Model/video_model.dart';
import 'package:flutter/material.dart';

import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class videopage extends StatefulWidget {
  const videopage({Key? key}) : super(key: key);

  @override
  _videopageState createState() => _videopageState();
}

class _videopageState extends State<videopage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Vidoes",
                style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
              ),
              Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                      // print(isSwitched);
                    });
                  }),
            ],
          ),
        ),
        Divider(
          thickness: 1,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: videolist.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage(videolist[index].avatorimage),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Wrap(
                                  spacing: 5.0,
                                  children: [
                                    Text(
                                      videolist[index].name,
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Follow",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Wrap(
                                  spacing: 5.0,
                                  children: [
                                    Text(
                                      "Just Now",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    Icon(Icons.public),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.more_vert)),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Column(children: [
                        YoutubePlayerControllerProvider(
                          // Provides controller to all the widget below it.
                          controller: YoutubePlayerController(
                            initialVideoId:
                                videolist[index].videoPostLink ?? "",
                            params: YoutubePlayerParams(
                              autoPlay: false,
                              mute: false,
                              showControls: true,
                              showFullscreenButton: false,
                            ),
                          ),
                          child: YoutubePlayerIFrame(
                            aspectRatio: 16 / 9,
                          ),
                        ),
                        Text(
                          videolist[index].videoPostTitle,
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  icon: Icon(Icons.thumb_up_alt_outlined),
                                  onPressed: videolist[index].likeOnPressed,
                                ),
                                Text('12', style: TextStyle(fontSize: 18.0)),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                    icon: Icon(Icons.message_outlined),
                                    onPressed: videolist[index].cmtOnPressed),
                                Text('10', style: TextStyle(fontSize: 18.0)),
                              ],
                            ),
                            Row(
                              children: [
                                IconButton(
                                    icon: Icon(Icons.share_outlined),
                                    onPressed: videolist[index].shareOnPressed),
                              ],
                            ),
                          ],
                        )
                      ]),
                    )
                  ],
                );
              }),
        ),
      ],
    );
  }
}
