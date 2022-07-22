import 'dart:ffi';

import 'package:flutter/material.dart';

class StateFullPage extends StatefulWidget {
  const StateFullPage({Key? key}) : super(key: key); //1.constructor

  @override
  State<StateFullPage> createState() => _StateFullPageState(); //2.Create state
}

class _StateFullPageState extends State<StateFullPage> {
  String name = "Mark Zackerberg";

  @override //3.build
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Basic'),
        ),
        body: Column(
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
            ),
            Text("Hello $name"),
          ],
        )
    );
  }
}