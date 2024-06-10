import 'package:flutter/material.dart';
import 'package:yersen/screens/corbalar.dart';
import 'package:yersen/screens/core/routes.dart';
import 'package:yersen/screens/mercimek.dart';
import 'package:yersen/screens/tariflerim.dart';
import 'package:yersen/screens/weelcome.dart';
import 'package:yersen/screens/home.dart';
import 'package:yersen/screens/singup.dart';
import 'package:yersen/screens/deneme.dart';
import 'package:yersen/screens/profile.dart';
import 'package:yersen/static/boarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: routes,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
