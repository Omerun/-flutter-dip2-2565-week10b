import 'package:flutter/material.dart';

import 'contact.dart';
import 'home.dart';
import 'stateful.dart';

class MyApp extends StatelessWidget{
  const MyApp({Key? key}):super(key: key);//1.constructor

  @override //2.build
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactPage(),
    );
  }
}