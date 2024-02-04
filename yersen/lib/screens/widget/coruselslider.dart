import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class corusel extends StatefulWidget {
  const corusel({super.key});

  @override
  State<corusel> createState() => _coruselState();
}

class _coruselState extends State<corusel> {
  final List<String> imgList = [
    'assets/images/cupra.jpg',
    'assets/images/kanat.jpg',
    'assets/images/pizza.jpg',
    'assets/images/pilav.jpg',
    'assets/images/lazanya.jpg',
    'assets/images/tralice.jpg',
    'assets/images/patlıcankebap.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    var ekran = MediaQuery.of(context);
    var genislik = ekran.size.width;
    var yukseklik = ekran.size.height;
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CarouselSlider(
                items: imgList
                    .map((e) => Container(
                          height:
                              yukseklik, //yukarıda tanımladığımmız yükseklik ve genişilik
                          width: genislik,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(e), fit: BoxFit.cover)),
                        ))
                    .toList(),
                options: CarouselOptions(
                    autoPlay: true, //resimlerin otomatik dönmesini sağlar
                    aspectRatio: 2.0, //resimlerin boyutunu ayarlar
                    enlargeCenterPage: true,
                    viewportFraction:
                        1, // resmin tek halinde sergilenmesini sağlar
                    onPageChanged: (index, reason) {
                      setState(() {});
                    }))
          ],
        ),
      ),
    );
  }
}
