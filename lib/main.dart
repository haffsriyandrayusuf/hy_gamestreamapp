import 'package:flutter/material.dart';
import 'package:hy_gamestreamapp/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Game Stream Apps',
      home: const HomePage(),
    );
  }
}
