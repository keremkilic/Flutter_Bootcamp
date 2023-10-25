import 'package:dart_dersleri/Flutter/bottom_nav_kullanimi/sayfa1.dart';
import 'package:dart_dersleri/Flutter/bottom_nav_kullanimi/sayfa2.dart';
import 'package:dart_dersleri/Flutter/bottom_nav_kullanimi/sayfa3.dart';
import 'package:flutter/material.dart';

class BottomNavigationSayfa extends StatefulWidget {
  const BottomNavigationSayfa({Key? key}) : super(key: key);

  @override
  State<BottomNavigationSayfa> createState() => _BottomNavigationSayfaState();
}

class _BottomNavigationSayfaState extends State<BottomNavigationSayfa> {
  int secilenIndex = 0;
  var sayfalar = [const Sayfa1(), const Sayfa2(), const Sayfa3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation"),
        backgroundColor: Colors.deepPurple,
      ),
      body: sayfalar[secilenIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_one_outlined),
            label: "Bir",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_two_outlined),
            label: "Iki",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.looks_3_outlined),
            label: "Uc",
          ),
        ],
        currentIndex: secilenIndex,
        backgroundColor: Colors.deepPurple,
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.white38,
        onTap: (value) {
          setState(() {
            secilenIndex = value;
          });
        },
      ),
    );
  }
}
