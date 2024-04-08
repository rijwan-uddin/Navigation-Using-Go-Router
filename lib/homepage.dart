import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyHomePage extends StatelessWidget {
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
                  context.go('/one');
                },
                child: const Text('Page One')),
            ElevatedButton(
                onPressed: () {
                  context.go('/two');
                },
                child: const Text('Page Two'))
          ],
        ),
      ),
    );
  }
}
//94  ... 5.07