import 'package:flutter/material.dart';
import 'package:here/pages/homePage/controller/homeController.dart';
import 'pages/homePage/homePage.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Kenyan'
      ),
      debugShowCheckedModeBanner: false,
      home: HomeController(
          child: HomePage()),
    );
  }
}