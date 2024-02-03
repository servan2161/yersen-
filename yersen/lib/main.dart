import 'package:flutter/material.dart';
import 'package:yersen/screens/weelcome.dart';
import 'package:yersen/screens/welcome.dart';
import 'package:yersen/screens/home.dart';
import 'package:yersen/screens/singup.dart';
import 'package:yersen/screens/deneme.dart';
import 'package:yersen/screens/profile.dart';

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
        '/welcome': (context) => welcome(),
        '/home': (context) => home(),
        '/singnup': (context) => singnup(),
        '/deneme': (context) => denme(),
        '/profile': (context) => profile(),
        '/weelcome': (context) => weelcome(),
      },
      initialRoute: '/weelcome',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
