import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PageOne extends StatelessWidget {
  static const String routeName = 'one';
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One '),
      ),
      body:  Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
                onPressed: () {
                  context.go('/one/onedetails');  //child details should be given like this.
                },//go with .go
                child: const Text('Page One Details'))
          ],
        ),
      ),
    );
  }
}
