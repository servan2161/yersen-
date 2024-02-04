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
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              corbalar(
                  'assets/images/corba.jpg', context, 'Mercimek', '/mercimek'),
              SizedBox(
                height: 16,
              ),
              Divider(),
              SizedBox(
                height: 16,
              ),
              corbalar(
                  'assets/images/tarhana.jpg', context, 'Tarhana', '/home'),
              SizedBox(
                height: 16,
              ),
              Divider(),
              corbalar(
                  'assets/images/domates.jpg', context, 'Dotmates', '/home'),
              SizedBox(
                height: 16,
              ),
              Divider(),
              corbalar(
                  'assets/images/iskembe.jpg', context, 'İşkembe', '/home'),
              SizedBox(
                height: 16,
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }

  Container corbalar(
    String corbaR,
    BuildContext context,
    String corbai,
    String ekranc,
  ) //BuildContext context
  {
    return Container(
      width: 510,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 46, 45, 60),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20, bottom: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                corbaR,
                width: 300,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, ekranc),
                  child: Row(
                    children: [
                      Text(
                        corbai,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "protest",
                            fontSize: 23),
                      )
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 94, 85, 196),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
