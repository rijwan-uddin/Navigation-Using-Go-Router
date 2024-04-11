import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/page_one.dart';
import 'package:navigation/page_two.dart';

class PageFour extends StatelessWidget {
  static const String routeName = 'four';
  const PageFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Four'),
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
