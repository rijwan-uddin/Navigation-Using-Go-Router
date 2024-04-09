import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/page_one.dart';
import 'package:navigation/page_two.dart';

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
                child: const Text('Page Two'))
          ],
        ),
      ),
    );
  }
}
//94  ... 5.07