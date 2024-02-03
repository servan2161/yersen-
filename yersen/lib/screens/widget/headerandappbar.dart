import 'package:flutter/material.dart';

class myhomeappbar extends StatelessWidget implements PreferredSizeWidget {
  const myhomeappbar({
    super.key,
  });
  @override
  Size get preferredSize => Size.fromHeight(150);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color.fromARGB(255, 233, 238, 247),
      title: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(255, 46, 45, 60),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/icon.jpg",
                width: 80,
              ),
              Icon(
                Icons.abc,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
