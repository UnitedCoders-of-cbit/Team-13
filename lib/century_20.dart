import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class century_20 extends StatefulWidget {
  const century_20({super.key});

  @override
  State<century_20> createState() => _century_20State();
}

class _century_20State extends State<century_20> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Welcome to 20th Century")),
      body: Container(
        height: 220,
        width: 420,
        color: Colors.amberAccent,
        child: Text('HIIIIIIIIIIII'),
      ),
    );
  }
}
