import 'dart:js';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/page_one.dart';
import 'package:navigation/page_two.dart';

import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Go Routes',
      routerConfig: _router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }

  final _router = GoRouter(initialLocation: '/', routes: [
    GoRoute(
        path: '/',
        builder: (context, state) => const MyHomePage()),
    GoRoute(
        path: '/one',
        builder: (context, state) => const PageOne()),
    GoRoute(
        path: '/two',
        builder: (context, state) => const PageTwo())
  ]);
}
