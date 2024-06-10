// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yersen/screens/widget/myappbar.dart';
import 'package:url_launcher/url_launcher.dart';

class profile extends StatelessWidget {
  const profile({super.key});
  final String targetPageURL = "https://www.google.com/intl/tr/gmail/about/";
  // urlyi tanımlayıp aşağıda da fonksiyonu tanımladığımız yer
  void email() async {
    if (await canLaunch(targetPageURL)) {
      await launch(targetPageURL);
    } else {
      throw 'Sayfa açılamıyor: $targetPageURL';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 238, 247),
      appBar: myappbar(
        bar: 'Profil',
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 17, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    context.push('/weelcome');
                  },
                  child: Icon(
                    Icons.logout,
                    color: Color.fromARGB(255, 52, 55, 60),
                    size: 35,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Icon(
            Icons.account_circle,
            size: 170,
            color: const Color.fromARGB(255, 94, 85, 196),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Servan Ceren",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color.fromARGB(255, 31, 31, 31),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Şef",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 70,
          ),
          Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: email, // butona bastığımızda gmaili açıyor
                        child: Row(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Icon(
                              Icons.mail,
                              size: 30,
                              color: Colors.white,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Text(
                                "EMAİL",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 94, 85, 196),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 52,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Eşleşme",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "Tarifler",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "Acemilik Derecesi",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "Rate",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(19.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "98%",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 31, 31, 31),
                  ),
                ),
                Text(
                  "52",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 31, 31, 31),
                  ),
                ),
                Text(
                  "Usta",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 31, 31, 31),
                  ),
                ),
                Text(
                  "4.8",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 31, 31, 31),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 35,
          ),
          favori(Icons.dinner_dining, 'MAKARNA'),
          favori2(Icons.food_bank, 'NUSRET'),
        ],
      ),
    );
  }

  Container favori(IconData icon, String yazi) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 19),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 46, 45, 60),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 10,
          ),
          Icon(
            icon,
            size: 40,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                yazi,
                style: TextStyle(
                    fontFamily: "protest",
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.w600,
                    fontSize: 25),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Icon(
              Icons.favorite,
              size: 40,
              color: Color.fromARGB(255, 94, 85, 196),
            ),
          ),
        ],
      ),
    );
  }

  Container favori2(IconData icon, String yazi) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 19),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 94, 85, 196),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 10,
          ),
          Icon(
            icon,
            size: 45,
            color: Color.fromARGB(255, 46, 45, 60),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                yazi,
                style: TextStyle(
                    fontFamily: "protest",
                    color: Color.fromARGB(255, 46, 45, 60),
                    fontWeight: FontWeight.w600,
                    fontSize: 25),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Icon(
              Icons.favorite,
              size: 40,
              color: Color.fromARGB(255, 46, 45, 60),
            ),
          ),
        ],
      ),
    );
  }
}
