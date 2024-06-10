import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:preload_page_view/preload_page_view.dart';
import 'package:yersen/screens/widget/boardin_item.dart';

import '../core/storage.dart';

class boarding extends StatefulWidget {
  const boarding({super.key});

  @override
  State<boarding> createState() => _boardingState();
}

class _boardingState extends State<boarding> {
  int page = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 94, 85, 196),
        actions: [
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: InkWell(
                onTap: () async {
                  final storage = Storage();
                  await storage.firstlauched();

                  GoRouter.of(context).replace("/weelcome");
                },
                child: page == 2
                    ? Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      )
                    : Text(
                        "Skip",
                        style: TextStyle(color: Colors.white),
                      )),
          )
        ],
      ),
      backgroundColor: Color.fromARGB(255, 94, 85, 196),
      body: SafeArea(
          child: PreloadPageView(
        onPageChanged: (value) {
          setState(() {
            page = value;
          });
        },
        children: [
          item(
            image: "assets/images/cook.jpg",
            title: "Yemek Yapmanın En Hızlı Ve En Kolay Yolu",
            description:
                "Midenizin zil çaldığını duyar gibiyim. Eğer sizde açsanız haydi bizimle yersene",
          ),
          item(
            image: "assets/images/ascı.jpg",
            title: "İsterseniz Bir Aşcı Olabilirsiniz ",
            description:
                "Gireceğiniz tarifler ile hem kendiniz hem de diğer kullanıcılar ile etkileşiminiz kurabilirsiniz.",
          ),
          item(
            image: "assets/images/gurme.png",
            title: "İsterseniz Bir Gurme Olabilirsiniz.",
            description:
                "Görüpte yapmak istediğiniz tarfileri sizde deneyerek damak zevkinizi binlerce tarif arasından bulabilirsiniz",
          ),
        ],
      )),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(35.0),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                page == 0
                    ? CupertinoIcons.circle_filled
                    : CupertinoIcons.circle,
                color: Colors.white,
              ),
              Icon(
                page == 1
                    ? CupertinoIcons.circle_filled
                    : CupertinoIcons.circle,
                color: Colors.white,
              ),
              Icon(
                page == 2
                    ? CupertinoIcons.circle_filled
                    : CupertinoIcons.circle,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
