import 'package:apple_shop_ui/pages/apple_shop_ui.dart';
import 'package:apple_shop_ui/pages/home_task.dart';
import 'package:apple_shop_ui/pages/your_logo1.dart';
import 'package:flutter/material.dart';

class HomwePage extends StatefulWidget {
  static const String id = "home_page";

  const HomwePage({Key? key}) : super(key: key);

  @override
  _HomwePageState createState() => _HomwePageState();
}

class _HomwePageState extends State<HomwePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 300,
            ),
            MaterialButton(
                child: Text("Apple Shop Page"),
                shape: StadiumBorder(),
                color: Colors.grey,
                height: 55,
                minWidth: 300,
                onPressed: () {
                  Navigator.of(context).pushNamed(AppleUIShop.id);
                }),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
                child: Text("Your Logo  Page"),
                shape: StadiumBorder(),
                color: Colors.grey,
                height: 55,
                minWidth: 300,
                onPressed: () {
                  Navigator.of(context).pushNamed(YourLogoPage.id);
                }),
            SizedBox(height: 20,),
            MaterialButton(
              shape: StadiumBorder(),
            onPressed: (){
                Navigator.of(context).pushNamed(HomeTaskApppleShop.id);
            },
              child: Container(
                height: 55,
                width: 300,

                child: Center(child: Text("Apple Shop onlineTask",style: TextStyle(color: Colors.white),)),
                decoration: BoxDecoration(
                  color: Colors.deepPurpleAccent,
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
