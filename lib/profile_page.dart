import 'package:flutter/material.dart';
import 'package:navigation/page_two.dart';

class ProfilePage extends StatelessWidget {
  static const String routeName = 'profile';
  final int id;
  const ProfilePage({super.key, required this.id,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
Text('$id',)
          ],
        ),
      ),
    );
  }
}
