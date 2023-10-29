import 'package:flutter/material.dart';
import 'package:rootweb/page/aydinlatma.dart';

import 'page/about.dart';
import 'page/cekilis.dart';
import 'page/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (context) => const HomePage(),
        "/raffle": (context) => const Cekilis(),
        "/clarification": (context) => const Aydinlatma(),
         "/about": (context) => const About(),
      },
      title: 'RootWeb',
      home: const HomePage(),
    );
  }
}
