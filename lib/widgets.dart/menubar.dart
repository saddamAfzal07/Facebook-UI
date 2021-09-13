import 'package:flutter/material.dart';

class menubar extends StatelessWidget {
  const menubar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Icon(
              Icons.post_add_outlined,
              color: Colors.blue,
            ),
            Text(
              "Text",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.grey[600]),
            ),
          ],
        ),
        Container(
          height: 50,
          child: VerticalDivider(
            thickness: 1,
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.video_call,
              color: Colors.red,
            ),
            Text(
              "Live video",
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Container(
          height: 50,
          child: VerticalDivider(
            thickness: 1,
          ),
        ),
        Row(
          children: [
            Icon(
              Icons.location_on,
              color: Colors.red,
            ),
            Text(
              "Location",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  color: Colors.grey[600]),
            ),
          ],
        )
      ],
    );
  }
}
