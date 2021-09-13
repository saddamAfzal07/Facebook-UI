import 'package:facebook_ui/Model/ModelHome/storymoder.dart';
import 'package:flutter/material.dart';

class storbar extends StatelessWidget {
  const storbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 10.0,
          children: [
            GestureDetector(
              onTap: () {
                print("Add a Story");
              },
              child: Container(
                height: 225,
                width: 150,
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 30),
                          height: 160,
                          width: 150,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10)),
                            child: Image.asset(
                              "assets/user/sonam.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          "Add a Photo",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 40,
                      left: 50,
                      child: Icon(
                        Icons.add_circle_rounded,
                        color: Colors.blueAccent,
                        size: 40.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
//Creating forloop for stories
            for (int i = 0; i < datastorymodel.length; i++) ...[
              GestureDetector(
                onTap: datastorymodel[i].ontap,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 225,
                  width: 150,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(datastorymodel[i].pic),
                      ),
                      Positioned(
                          bottom: 10,
                          left: 10,
                          child: Text(
                            datastorymodel[i].name,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0),
                          ))
                    ],
                  ),
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
