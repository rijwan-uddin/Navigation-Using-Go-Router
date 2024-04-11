import 'dart:js';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/page_four.dart';
import 'package:navigation/page_one.dart';
import 'package:navigation/page_onedetails.dart';
import 'package:navigation/page_three.dart';
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
      //name: 'Home',
      name: MyHomePage.routeName,
        path: '/',
        builder: (context, state) => const MyHomePage()),
    GoRoute(
     // name: 'one',
      name: PageOne.routeName,
        path: '/one',
        builder: (context, state) => const PageOne(),
    routes:[
      GoRoute(
        name: 'One Details',
        path: 'onedetails',
        builder: (context , state) => const PageOneDetails()
    ),  //child of another route doesnt need to put forward slash

        ]
    ),
    GoRoute(
      // name: 'two',
        name: PageTwo.routeName,
        path: '/two',
        builder: (context, state) => const PageTwo()),
    GoRoute(
      // name: 'two',
        name: PageThree.routeName,
        path: '/three',
        builder: (context, state) => const PageThree()),
    GoRoute(
      // name: 'two',
        name: PageFour.routeName,
        path: '/four',
        builder: (context, state) => const PageFour()),

  ]);
}
