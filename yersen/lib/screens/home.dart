// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:yersen/screens/widget/bottomNavbar.dart';
import 'package:yersen/screens/widget/coruselslider.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 233, 238, 247),
      //appBar: myhomeappbar(),
      body: Container(
        color: Color.fromARGB(255, 233, 238, 247),
        child: Column(
          children: [
            header(),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  color: const Color.fromARGB(255, 233, 238, 247),
                  width: double.infinity,
                  child: Column(
                    children: [
                      sef(),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: write('Yemekler'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: corusel(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      foods(context, 'assets/images/corba.jpg', "/home",
                          'Çorbalar'),
                      foods(context, 'assets/images/adana.jpg', "/home",
                          'Ana Yemekler'),
                      foods(context, 'assets/images/pizza.jpg', "/home",
                          'Pizzalar'),
                      foods(context, 'assets/images/lazanya.jpg', "/home",
                          'Makarnalar'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottom(),
    );
  }

  Widget foods(
          BuildContext context, String foto, String screen, String title) =>
      Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 46, 45, 60),
          ),
          width: double.infinity,
          height: 240,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: Container(
                          child: ClipRRect(
                        //bir resmin kenarlarını yumuşatmak içim kullandığımız wiget.
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          foto,
                          width: 300,
                        ),
                      )),
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () => Navigator.pushNamed(context, screen),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(11.0),
                              child: Text(
                                title,
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Icon(
                              Icons.list,
                              color: Color.fromARGB(255, 255, 255, 255),
                            )
                          ],
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 94, 85, 196),
                            fixedSize: Size(195, 50)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );

  Widget sef() => Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              write('Şefler'),
              SizedBox(
                height: 22,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    story('assets/images/somer.jpg', 'Somer S.'),
                    story('assets/images/danilo.jpg', 'Danilo Z.'),
                    story('assets/images/mehmet.png', 'Mehmet Y..'),
                    story('assets/images/vedat.jpg', 'Vedat M.'),
                    story('assets/images/servan.jpg', 'Servan A.'),
                    story('assets/images/ceren.jpg', 'Ceren S.'),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  Row write(String yazi) {
    return Row(
      children: [
        Text(
          yazi,
          style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }

  Widget story(String photo, String name) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 94, 85, 196),
                  Color.fromARGB(255, 46, 45, 60),
                ]),
                shape: BoxShape.circle),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 238, 247),
                  shape: BoxShape.circle),
              child: CircleAvatar(
                backgroundImage: AssetImage(photo),
                radius: 52,
              ),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  Padding header() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 46, 45, 60),
        ),
        width: double.infinity,
        height: 75,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset("assets/images/ikonn.png"),
              Spacer(),
              Container(
                height: 35,
                width: 130, //boyutunu ayarlama
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Color.fromARGB(255, 46, 45, 60),
                            size: 23,
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Search...",
                                  hintStyle: TextStyle(fontSize: 12),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical:
                                          -25)), //search yazısını ortaya çekmek için kullanıldı.
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.notifications,
                    color: Color.fromARGB(255, 46, 45, 60),
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
