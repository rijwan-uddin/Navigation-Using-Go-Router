import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/page_four.dart';
import 'package:navigation/page_one.dart';
import 'package:navigation/page_three.dart';
import 'package:navigation/page_two.dart';
import 'package:navigation/profile_page.dart';

class MyHomePage extends StatelessWidget {
  static const String routeName = 'home';
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body:  Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
                onPressed: () {
                 // context.goNamed('one');//go with .goNamed
                  context.goNamed(PageOne.routeName);
                },
                child: const Text('Page One')),
            ElevatedButton(
                onPressed: () {
                  context.goNamed(PageTwo.routeName);
                },
                child: const Text('Page Two')),
            ElevatedButton(
                onPressed: () {
                  // context.goNamed('one');//go with .goNamed
                  context.goNamed(PageThree.routeName);
                },
                child: const Text('Page three')),
            ElevatedButton(
                onPressed: () {
                  context.goNamed(PageFour.routeName);
                },
                child: const Text('Page four')),
            ElevatedButton(
                onPressed: () {
                  context.goNamed(ProfilePage.routeName,
                      pathParameters: {'id' : '1'},
                  );
                },
                child: const Text('Profile')),
          ],
        ),
      ),
    );
  }
}
//94  ... 5.07
//95 finish