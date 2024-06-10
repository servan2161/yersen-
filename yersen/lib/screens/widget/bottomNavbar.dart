//bottom sayfası oluştrarak herhangi bir sayafda bottom menüyü kullanmaız gerektiğinde bu sayfayı
//import ederek çağırdığımızda işimiz kolayşalmış olacak.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class bottom extends StatelessWidget {
  const bottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(255, 94, 85, 196)),
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            icon(context, Icons.home, "/home"),
            icon(context, Icons.menu_book, "/tariflerim"),
            icon(context, Icons.person, "/profile"),
          ],
        ),
      ),
    );
  }

  Padding icon(BuildContext context, IconData icon, String screen) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: InkWell(
        onTap: () {
          context.push(screen);
        },
        child: Icon(
          icon,
          color: Colors.white,
          size: 35,
        ),
      ),
    );
  }
}
