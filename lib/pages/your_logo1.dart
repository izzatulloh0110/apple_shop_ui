import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class YourLogoPage extends StatefulWidget {
  static const String id = "your_logo_page";

  const YourLogoPage({Key? key}) : super(key: key);

  @override
  _YourLogoPageState createState() => _YourLogoPageState();
}

class _YourLogoPageState extends State<YourLogoPage> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade800,
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: [
              Container(
                margin: EdgeInsets.only(top: 120),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "Your Logo",
                        style: TextStyle(color: Colors.white, fontSize: 35),
                      ),
                    ),
                    SizedBox(
                      height: 250,
                    ),
                    Text(
                      "All Your Favourite Dishes",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Order from your nearluy best reghaurast in tje town.\n         You can nearly order anywhere, anytime",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 120),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "Your Logo",
                        style: TextStyle(color: Colors.white, fontSize: 35),
                      ),
                    ),
                    SizedBox(
                      height: 250,
                    ),
                    Text(
                      "All Your Favourite Dishes",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Order from your nearluy best reghaurast in tje town.\n         You can nearly order anywhere, anytime",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 120),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "Your Logo",
                        style: TextStyle(color: Colors.white, fontSize: 35),
                      ),
                    ),
                    SizedBox(
                      height: 250,
                    ),
                    Text(
                      "All Your Favourite Dishes",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Order from your nearluy best reghaurast in tje town.\n         You can nearly order anywhere, anytime",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ],
          ),

          // #indicator
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 270,),
              Align(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                    controller: controller,
                    count: 5,
                    effect: ScrollingDotsEffect(
                      activeStrokeWidth: 2.6,
                      activeDotColor: Colors.white,
                      dotColor: Colors.white.withOpacity(0.7),
                      activeDotScale: 1.3,
                      maxVisibleDots: 5,
                      radius: 8,
                      spacing: 10,
                      dotHeight: 8,
                      dotWidth: 8,
                    )),
              ),
            ],
          ),

          // button
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 272,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
                color: Color(0xfffb8a60),
              ),
              child: Column(
                children: [
                  //#get started
                  Container(
                    child: Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(color: Colors.white),
                        )),
                    margin: EdgeInsets.only(top: 80),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green.shade500,
                    ),
                    height: 50,
                    width: 330,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  //#login
                  Container(
                    height: 50,
                    width: 330,
                    child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        )),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
