import 'package:dart_dersleri/Flutter/kisiler_uygulamasi/ui/views/kisiler_anasayfa.dart';
import 'package:dart_dersleri/Flutter/urunler_uygulamasi/ui/views/urunler_anaSayfa.dart';
import 'package:flutter/material.dart';

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
      home: const UrunlerAnaSayfa(),
    );
  }
}
