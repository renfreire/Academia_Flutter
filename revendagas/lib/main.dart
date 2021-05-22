import 'package:flutter/material.dart';
import 'package:revendagas/app_routes.dart';
import 'package:revendagas/screens/detail.dart';
import 'package:revendagas/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RevendaGas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.red,
      ),
      //home: HomePage(),
      routes: {
        AppRoutes.HOME: (ctx) => HomePage(),
        AppRoutes.DETAILSPAGE: (ctx) => DetailPage()
      },
    );
  }
}
