// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:yersen/screens/widget/myappbar.dart';

class tariflerim extends StatefulWidget {
  const tariflerim({super.key});

  @override
  State<tariflerim> createState() => _tariflerimState();
}

class _tariflerimState extends State<tariflerim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 238, 247),
      appBar: myappbar(bar: 'Tariflerim'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            children: [
              Column(
                children: [
                  yemekler(
                      '/profile', 'Pizza', context, 'assets/images/pizza.jpg'),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  yemekler('/profile', 'Traliçe', context,
                      'assets/images/tralice.jpg'),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  yemekler(
                      '/profile', 'Balık', context, 'assets/images/balık.jpg'),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  yemekler('/profile', 'iskembe', context,
                      'assets/images/iskembe.jpg'),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container yemekler(
    String fave,
    String fav,
    BuildContext context,
    String favr,
  ) {
    return Container(
      width: 510,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 46, 45, 60),
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(
              color: const Color.fromARGB(255, 94, 85, 196), width: 3.5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              favr,
              width: 300,
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, fave),
                child: Row(
                  children: [
                    Text(
                      fav,
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
          )
        ],
      ),
    );
  }
}
