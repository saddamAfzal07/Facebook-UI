import 'package:flutter/material.dart';

class postbar extends StatelessWidget {
  const postbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          iconSize: 50,
          onPressed: () {},
          icon: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/user/sonam.jpg"),
          ),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "What,s on your mind?",
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            )),
        Container(
          height: 60,
          child: VerticalDivider(
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(Icons.photo),
              SizedBox(
                height: 5,
              ),
              Text("Photo")
            ],
          ),
        ),
      ],
    );
    // Container(
    //   width: MediaQuery.of(context).size.width,
    //   child: Divider(
    //     color: Colors.black,
    //   ),
    // ),
  }
}
