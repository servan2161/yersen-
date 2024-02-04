// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:yersen/screens/widget/myappbar.dart';

class mercimek extends StatefulWidget {
  const mercimek({super.key});

  @override
  State<mercimek> createState() => _mercimekState();
}

class _mercimekState extends State<mercimek> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 238, 247),
      appBar: myappbar(bar: "Mercimek"),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/corba.jpg',
                      width: 400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Column(
                children: [
                  Malzemeler('Malzemeler'),
                  SizedBox(
                    height: 30,
                  ),
                  icindekiler('• 250g mercimek'),
                  icindekiler('• 6 bardak su'),
                  icindekiler('• 2-3 Çorba kaşığı sıvı yağ'),
                  icindekiler('• 1 soğan'),
                  icindekiler('• 1 havuc'),
                  icindekiler('• 1 patates'),
                  icindekiler('• tuz karabiber'),
                  SizedBox(
                    height: 30,
                  ),
                  Malzemeler('Hazırlanışı'),
                  SizedBox(
                    height: 30,
                  ),
                  icindekiler(
                      '• Bir tencereye sıvı yağı al ve üzerine iri iri doğranmış soğanı ekle.'),
                  icindekiler(
                      '•Mercimeği bol suyla güzelce yıkayıp sebzelerin üzerine boşalt.'),
                  icindekiler('•istediğin kadar tuz kara ve karabiber'),
                  icindekiler(
                      '•Birkaç tur karıştırıp son olarak 6 bardak sıcak suyu ilave et.'),
                  icindekiler(
                      '•Kapağını kapatıp sebzeler yumuşayıncaya kadar pişir.'),
                  icindekiler('•Pişen çorbayı blender’dan geçir.'),
                  icindekiler(
                      '•Çorban piştikten sonra ona renk ve tat katmak için dilersen '),
                  icindekiler(
                      'biraz salça ve tereyağını kavurup azıcık suyla açabilirsin. '),
                  SizedBox(
                    height: 20,
                  ),
                  Malzemeler('Afiyet Olsun :)')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container icindekiler(icerigi) {
    return Container(
      child: Text(
        icerigi,
        style: TextStyle(
            color: Color.fromARGB(255, 46, 45, 60),
            fontFamily: "protest",
            fontSize: 16.5),
      ),
    );
  }

  Container Malzemeler(malzeme) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Color.fromARGB(255, 46, 45, 60), width: 2)),
      child: Text(
        malzeme,
        style: TextStyle(
            color: Color.fromARGB(255, 46, 45, 60),
            fontFamily: "protest",
            fontSize: 35),
      ),
    );
  }
}
