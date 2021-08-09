import 'package:as_task6/pages/home.dart';
import 'package:as_task6/pages/myCart.dart';
import 'package:as_task6/pages/product.dart';
import 'package:as_task6/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        MyRoutes.cartRoute: (context) => MyCart(),
        MyRoutes.itemRoute: (context) => ProductPage(),
      },
    );
  }
}
