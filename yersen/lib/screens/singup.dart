// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yersen/screens/widget/myappbar.dart';

class singnup extends StatelessWidget {
  const singnup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 238, 247),
      appBar: myappbar(
        bar: 'Profil',
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 94, 85, 196),
            radius: 90,
            child: Icon(
              Icons.person_add,
              size: 80,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          kutu('Name', Icons.person),
          SizedBox(
            height: 20,
          ),
          kutu('Password', Icons.lock),
          SizedBox(
            height: 20,
          ),
          kutu('Email', Icons.mail),
          SizedBox(
            height: 20,
          ),
          kutu('Cinsiyet ', Icons.wc),
          SizedBox(
            height: 120,
          ),
          buton(context),
        ],
      ),
    );
  }

  ElevatedButton buton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.push('/home');
      },
      child: Container(
        width: 150,
        child: Row(
          children: [
            SizedBox(
              height: 50,
            ),
            Icon(
              Icons.how_to_reg,
              size: 30,
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: Text(
                "Kayıt ol",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: Color.fromARGB(255, 46, 45, 60),
      ),
    );
  }

  Row kutu(String yazi, IconData icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 300,
          child: TextField(
            decoration: InputDecoration(
                hintText: yazi,
                prefixIcon: Icon(
                  icon,
                  color: Color.fromARGB(255, 94, 85, 196),
                ),
                hintStyle: TextStyle(color: Color.fromARGB(255, 94, 85, 196))),
          ),
        ),
      ],
    );
  }
}
