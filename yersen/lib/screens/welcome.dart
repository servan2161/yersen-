import 'package:flutter/material.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromARGB(255, 83, 96, 109),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  "assets/images/icon.jpg",
                  width: 250,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 90,
              ),
              email(),
              password(),
              SizedBox(
                height: 65,
              ),
              Column(
                children: [
                  login(context),
                  SizedBox(
                    height: 20,
                  ),
                  signup(context)
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }

  ElevatedButton login(BuildContext context) {
    return ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, '/home'),
        child: Container(
          margin: EdgeInsets.all(10),
          width: 110,
          height: 25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.person_add,
                size: 20,
                color: (Colors.white),
              ),
            ],
          ),
        ),
        style: ElevatedButton.styleFrom(
            minimumSize: Size(200, 46),
            primary: Color.fromRGBO(8, 161, 140, 1),
            onPrimary: Color.fromRGBO(8, 161, 140, 1)));
  }

  ElevatedButton signup(BuildContext context) {
    return ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, '/login'),
        child: Container(
          margin: EdgeInsets.all(10),
          width: 110,
          height: 25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign Up",
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.person_add,
                size: 20,
                color: (Colors.white),
              ),
            ],
          ),
        ),
        style: ElevatedButton.styleFrom(
            minimumSize: Size(200, 46),
            primary: Color.fromRGBO(8, 161, 140, 1),
            onPrimary: Color.fromRGBO(8, 161, 140, 1)));
  }

  Container email() {
    return Container(
      margin: EdgeInsets.all(10),
      width: 350,
      height: 50,
      decoration: BoxDecoration(
          color: Color.fromRGBO(8, 161, 140, 1),
          borderRadius: BorderRadius.circular(100)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        child: TextField(
          decoration: InputDecoration(
              hintText: 'email',
              prefixIcon: Icon(
                Icons.email,
                color: Color.fromARGB(255, 83, 96, 109),
              ),
              border: InputBorder.none,
              hintStyle:
                  TextStyle(color: const Color.fromARGB(53, 255, 255, 255))),
        ),
      ),
    );
  }
}

Container password() {
  return Container(
    margin: EdgeInsets.all(10),
    width: 350,
    height: 50,
    decoration: BoxDecoration(
        color: Color.fromRGBO(8, 161, 140, 1),
        borderRadius: BorderRadius.circular(100)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'password',
            prefixIcon: Icon(
              Icons.lock,
              color: Color.fromARGB(255, 83, 96, 109),
            ),
            border: InputBorder.none,
            hintStyle:
                TextStyle(color: const Color.fromARGB(53, 255, 255, 255))),
        obscureText: true,
      ),
    ),
  );
}
