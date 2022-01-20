import 'package:apple_shop_ui/pages/apple_shop_ui.dart';
import 'package:apple_shop_ui/pages/home_page.dart';
import 'package:apple_shop_ui/pages/home_task.dart';
import 'package:apple_shop_ui/pages/your_logo1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomwePage(),
      routes: {
        AppleUIShop.id: (context) => AppleUIShop(),
        YourLogoPage.id: (context) => YourLogoPage(),
        HomeTaskApppleShop.id: (context) => HomeTaskApppleShop(),
      },
    );
  }
}
