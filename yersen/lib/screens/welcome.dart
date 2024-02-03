import 'package:flutter/material.dart';

class welcome extends StatelessWidget {
  const welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color.fromARGB(255, 233, 238, 247),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image.asset(
                  "assets/images/ikonn.png",
                  width: 250,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 70,
              ),
              //Text(
              //"Yersen",
              //),
              SizedBox(
                height: 80,
              ),
              email(),
              password(),
              SizedBox(
                height: 45,
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
            primary: Color.fromARGB(255, 94, 85, 196),
            onPrimary: Color.fromARGB(255, 94, 85, 196)));
  }

  ElevatedButton signup(BuildContext context) {
    return ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, '/signup'),
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
            primary: Color.fromARGB(255, 94, 85, 196),
            onPrimary: Color.fromARGB(255, 94, 85, 196)));
  }

  Container email() {
    return Container(
      margin: EdgeInsets.all(10),
      width: 350,
      height: 50,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 52, 55, 60),
          borderRadius: BorderRadius.circular(100)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Email',
              prefixIcon: Icon(
                Icons.email,
                color: Color.fromARGB(210, 255, 255, 255),
              ),
              border: InputBorder.none,
              hintStyle: TextStyle(color: Color.fromARGB(92, 255, 255, 255))),
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
        color: Color.fromARGB(255, 52, 55, 60),
        borderRadius: BorderRadius.circular(100)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'password',
            prefixIcon: Icon(
              Icons.lock,
              color: Color.fromARGB(210, 255, 255, 255),
            ),
            border: InputBorder.none,
            hintStyle:
                TextStyle(color: const Color.fromARGB(92, 255, 255, 255))),
        obscureText: true,
      ),
    ),
  );
}
