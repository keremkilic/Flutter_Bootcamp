import 'package:flutter/material.dart';
import 'package:lokasyon_kullanimi/AnaSayfa.dart';
import 'package:lokasyon_kullanimi/harita_sayfa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HaritaSayfa(),
    );
  }
}