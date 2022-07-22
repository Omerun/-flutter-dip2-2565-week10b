import 'package:flutter/material.dart';

class StateFulPage extends StatefulWidget {
  const StateFulPage({Key? key}) : super(key: key);

  @override
  State<StateFulPage> createState() => _StateFulPageState();
}

class _StateFulPageState extends State<StateFulPage> {
  String name = "Mark Zackerberg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Basic'),
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              setState((){
                name = value;
              });
              print("Setsate is called: $name");
            },
          ),
          Text("Hello $name"),
        ],
      ),
    );
  }
}