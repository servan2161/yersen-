// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:yersen/screens/widget/myappbar.dart';

class corba extends StatefulWidget {
  const corba({super.key});

  @override
  State<corba> createState() => _corbaState();
}

class _corbaState extends State<corba> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 238, 247),
      appBar: myappbar(bar: "Çorbalar"),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  color: Colors.black,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
