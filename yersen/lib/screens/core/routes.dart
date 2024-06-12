import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:yersen/screens/core/error.dart';
import 'package:yersen/screens/core/loader.dart';

import '../../static/boarding.dart';
import '../corbalar.dart';
import '../home.dart';
import '../mercimek.dart';
import '../profile.dart';
import '../singup.dart';
import '../tariflerim.dart';
import '../weelcome.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final routes = GoRouter(
  navigatorKey: _rootNavigatorKey,
  errorBuilder: (context, state) => const error(),
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => const home(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const loader(),
    ),
    GoRoute(
      path: '/corbalar',
      builder: (context, state) => const corba(),
    ),
    GoRoute(
      path: '/boarding',
      builder: (context, state) => const boarding(),
    ),
    GoRoute(
      path: '/mercimek',
      builder: (context, state) => const mercimek(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => profile(),
    ),
    GoRoute(
      path: '/tariflerim',
      builder: (context, state) => const tariflerim(),
    ),
    GoRoute(
      path: '/singup',
      builder: (context, state) => const singnup(),
    ),
    GoRoute(
      path: '/singup',
      builder: (context, state) => const singnup(),
    ),
    GoRoute(
      path: '/weelcome',
      builder: (context, state) => const weelcome(),
    ),
  ],
);
