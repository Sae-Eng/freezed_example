import 'package:flutter/material.dart';

import 'freezed_user_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Freezed Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FreezedUserPage(),
    );
  }
}
