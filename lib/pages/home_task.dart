import 'package:flutter/material.dart';

class HomeTaskApppleShop extends StatefulWidget {
  static const String id = "home_apple_shop";

  const HomeTaskApppleShop({Key? key}) : super(key: key);

  @override
  _HomeTaskApppleShopState createState() => _HomeTaskApppleShopState();
}

class _HomeTaskApppleShopState extends State<HomeTaskApppleShop> {
  List _itemList = [
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
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.menu_open_outlined,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Apple Shop",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Container(
            child: Center(
                child: Text(
              "17",
              style: TextStyle(color: Colors.white),
            )),
            margin: EdgeInsets.only(top: 13, bottom: 10, right: 10),
            width: 35,
            decoration: BoxDecoration(
                color: Colors.grey.shade800,
                borderRadius: BorderRadius.circular(10)),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: 220,
            // width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage("assets/images/apple_img6.jpeg"),
                    fit: BoxFit.cover)),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(0.9),
                  Colors.black.withOpacity(0.1),
                ]),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 75,
                  ),
                  //#Text
                  Center(
                      child: Text(
                    "Lifestyle Sale",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 38,
                        fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  //#button
                  Container(
                    child: Center(
                        child: Text(
                      "Shop Now",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    )),
                    height: 40,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: GridView.count(
                crossAxisCount: 1,
                children: _itemList.map((e) => listOfCell(e)).toList()),
          )
        ],
      ),
    );
  }
   //# item Of List
  Widget listOfCell(String item) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.favorite,color:Colors.redAccent ,)
            ],
          ),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image:
                  DecorationImage(image: AssetImage(item), fit: BoxFit.cover)),
        ),
      ),
    );
  }
}
