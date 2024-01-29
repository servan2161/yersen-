import 'package:flutter/material.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromRGBO(8, 161, 140, 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "sing up",
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  height: 100,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
