import 'package:flu/screens/containereg.dart';
import 'package:flu/screens/grocery.dart';
import 'package:flu/screens/home.dart';
import 'package:flu/screens/rows.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'First App',
    //theme: ThemeData.light(),
    theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(backgroundColor: Colors.amber)),
    //home: SafeArea(child: Text('Hello flutter')),
    // home: Home()
    //home: ContainerExample(),
    home: GrocApp(),
  ));
}
