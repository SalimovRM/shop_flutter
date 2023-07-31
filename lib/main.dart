import 'package:flutter/material.dart';
import 'package:shop_flutter/app/pages/CartPage.dart';
import 'package:shop_flutter/app/pages/HomePage.dart';

import 'app/pages/ItemPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": (context) => HomePage(),
        "/cartPage": (context) => CartPage(),
        "/itemPage": (context) => ItemPage(),
        },
    );
  }
}
//Рома
