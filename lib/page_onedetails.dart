import 'package:flutter/material.dart';

class PageOneDetails extends StatelessWidget {
  static const String routeName = 'oneDet';
  const PageOneDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Page One details'),
      ),
      body:  Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [


          ],
        ),
      ),
    );
  }
}
