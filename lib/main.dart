import 'dart:js';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/page_one.dart';
import 'package:navigation/page_onedetails.dart';
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
        builder: (context, state) => const PageOne(),
    routes:[
      GoRoute(
        path: 'onedetails',
        builder: (context , state) => const PageOneDetails()
    ),  //child of another route doesnt need to put forward slash

        ]
    ),
    GoRoute(
        path: '/two',
        builder: (context, state) => const PageTwo()),

  ]);
}
