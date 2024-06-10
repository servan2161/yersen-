// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables
//responsice welcome sayfası

import 'package:go_router/go_router.dart';
import 'package:yersen/screens/core/responsive.dart';
import 'package:flutter/material.dart';
import 'package:yersen/services/api.dart';
import 'package:yersen/services/storage.dart';

class weelcome extends StatefulWidget {
  const weelcome({super.key});

  @override
  State<weelcome> createState() => _weelcomeState();
}

class _weelcomeState extends State<weelcome> {
  screen device = screen.mobile;

//drawscreen fonksiyonu resposive ölçülerimizi ayrı bir dart uzantılı dosyada
//responsive ölçülerimizi belirlediğimiz bir fonksiyondur.
  drawscreen() {
    switch (device) {
      case (screen.mobile):
        return mainphone(context);
      case (screen.tablet):
        return Row(
          children: [
            tablet(),
          ],
        );
      case (screen.desktop):
        return Row(
          children: [desktop()],
        );
    }
  }

  var emailkontrol = TextEditingController(); //kullanıcının emailini almak için
  var parola = TextEditingController(); //kullanıcının passwordünü  almak için

  kullanci() async {
    API api = API();
    final cevap =
        await api.login(email: emailkontrol.text, password: parola.text);
    if (cevap is Exception) {
      print(cevap);
    } else {
      storage depo = storage();
      await depo.savetoke(cevap["token"]);
      Navigator.pushNamed(context, '/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    setState(() {});
    device = detectscreen(MediaQuery.of(context).size);
    return Scaffold(
      body: drawscreen(),
    );
  }

  Expanded desktop() {
    //masa üstünü belirleyen tasarım
    return Expanded(
      child: Container(
        color: Color.fromARGB(255, 233, 238, 247),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                ClipRRect(
                  //bir resmin kenarlarını yumuşatmak için kullanılan widget
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
                Text(
                  "Yersen",
                  style: TextStyle(
                      fontSize: 50, color: Color.fromARGB(255, 52, 55, 60)),
                ),
                SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    children: [email(), password()],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 220.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          login(context),
                          SizedBox(
                            width: 90,
                          ),
                          signup(context)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded tablet() {
    //tablet tsarımını belirleyen tasarım
    return Expanded(
      child: Container(
          color: Color.fromARGB(255, 233, 238, 247),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                children: [
                  ClipRRect(
                    //bir resmin kenarlarını yumuşatmak için kullanılan widget
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
                  Text(
                    "Yersen",
                    style: TextStyle(
                      fontFamily: "protest",
                      fontSize: 50,
                      color: Color.fromARGB(255, 52, 55, 60),
                    ),
                  ),
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
          )),
    );
  }

  Container mainphone(BuildContext context) {
    //telefon satarımını belirleyen tasarım
    return Container(
      color: Color.fromARGB(255, 233, 238, 247),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              ClipRRect(
                //bir resmin kenarlarını yumuşatmak için kullanılan widget
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
              Text(
                "Yersen",
                style: TextStyle(
                    fontFamily: "protest",
                    fontSize: 50,
                    color: Color.fromARGB(255, 52, 55, 60)),
              ),
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
    );
  }

  ElevatedButton login(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          context.push('/home');
        },
        //kullanci,
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
                Icons.login,
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
        onPressed: () {
          context.push('/singup');
        },
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
          style: TextStyle(color: Colors.white),
          controller: emailkontrol, //email kontrol etmek için
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
          style: TextStyle(color: Colors.white),
          controller: parola,
          decoration: InputDecoration(
              hintText: 'password',
              prefixIcon: Icon(
                Icons.lock,
                color: Color.fromARGB(210, 255, 255, 255),
              ),
              border: InputBorder.none,
              hintStyle:
                  TextStyle(color: const Color.fromARGB(92, 255, 255, 255))),
          obscureText: true, // yazdığımız şifreyi gizleyen kod
        ),
      ),
    );
  }
}
