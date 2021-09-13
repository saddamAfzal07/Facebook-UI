import 'package:facebook_ui/Model/market.dart';
import 'package:flutter/material.dart';

class Market extends StatefulWidget {
  const Market({Key? key}) : super(key: key);

  @override
  _MarketState createState() => _MarketState();
}

class _MarketState extends State<Market> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Market Place",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              )
            ],
          ),
        ),
        Divider(
          thickness: 1.0,
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(10),
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: listmarket.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5),
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.black.withOpacity(0.3))),
                    child: GridTile(
                      child: InkWell(
                        onTap: () {},
                        child: Card(
                          elevation: 5,
                          child: Image.asset(
                            listmarket[index].image,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                      footer: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                            child: Column(
                          children: [
                            Text(
                              listmarket[index].carname,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              listmarket[index].carprice,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                      ),
                    ),
                  );
                }),
          ),
        )
      ],
    );
  }
}
