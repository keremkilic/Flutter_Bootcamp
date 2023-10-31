import 'package:dart_dersleri/odevler/Odev5/odev5_anasayfa.dart';
import 'package:dart_dersleri/odevler/Odev6/ui/views/odev6_anasayfa.dart';
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
      /*theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        //useMaterial3: true,
      ),
       */
      home: const Odev6AnaSayfa(), // Netflix gibi bir ekran yapmayı dene
    );
  }
}
