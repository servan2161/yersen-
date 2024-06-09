import 'package:flutter/material.dart';
import 'package:yersen/screens/corbalar.dart';
import 'package:yersen/screens/mercimek.dart';
import 'package:yersen/screens/tariflerim.dart';
import 'package:yersen/screens/weelcome.dart';
import 'package:yersen/screens/home.dart';
import 'package:yersen/screens/singup.dart';
import 'package:yersen/screens/deneme.dart';
import 'package:yersen/screens/profile.dart';
import 'package:yersen/screens/boarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => home(),
        '/singnup': (context) => singnup(),
        '/deneme': (context) => denme(),
        '/profile': (context) => profile(),
        '/weelcome': (context) => weelcome(),
        '/corbalar': (context) => corba(),
        '/mercimek': (context) => mercimek(),
        '/tariflerim': (context) => tariflerim(),
        '/boarding': (context) => boarding(),
      },
      initialRoute: '/boarding',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
