import 'dart:ui';

import 'package:flutter/material.dart';

class AppleUIShop extends StatefulWidget {
  static const String id = "apple_ui_shop";

  const AppleUIShop({Key? key}) : super(key: key);

  @override
  _AppleUIShopState createState() => _AppleUIShopState();
}

class _AppleUIShopState extends State<AppleUIShop> {
  final List<String> _listItem = [
    "assets/images/apple_img7.jpeg",
    "assets/images/apple_img1.jpeg",
    "assets/images/apple_img2.jpeg",
    "assets/images/apple_img3.jpeg",
    "assets/images/apple_img4.jpeg",
    "assets/images/apple_img5.jpeg",
    "assets/images/apple_img6.jpeg",
    "assets/images/apple_img7.jpeg",
    "assets/images/apple_img8.jpeg",
    "assets/images/apple_img9.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Shop App"),
        leading: Icon(Icons.menu_open),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 34,
              width: 30,
              decoration: BoxDecoration(
                  color: Colors.grey.shade700,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  "11",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/images/apple_img6.jpeg"),
                    fit: BoxFit.cover,
                  )),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient:
                        LinearGradient(begin: Alignment.bottomRight, colors: [
                      Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(0.1),
                    ])),
                child: Column(
                  children: [
                    SizedBox(
                      height: 75,
                    ),
                    Text(
                      "Lifestyle Sale",
                      style: TextStyle(
                          color: Colors.amber,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    Container(
                      child: Center(child: Text("Shop Now")),
                      width: 200,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              children: _listItem.map((item) => cellOfList(item)).toList(),
            )
          ],
        ),
      ),
    );
  }

  //#build cell
  Widget cellOfList(String item) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: AssetImage(item), fit: BoxFit.cover)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(
                Icons.star_border,
                color: Colors.deepPurple,
              )
            ],
          ),
        ),
      ),
    );
  }
}
