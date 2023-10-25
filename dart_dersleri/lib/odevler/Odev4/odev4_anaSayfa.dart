import 'package:dart_dersleri/odevler/Odev4/odev4sayfaA.dart';
import 'package:dart_dersleri/odevler/Odev4/odev4sayfaX.dart';
import 'package:flutter/material.dart';

class Odev4 extends StatefulWidget {
  const Odev4({Key? key}) : super(key: key);

  @override
  State<Odev4> createState() => _Odev4State();
}

class _Odev4State extends State<Odev4> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Ekran yuksekliği : $ekranYuksekligi");
    print("Ekran genisliği : $ekranGenisligi");

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("Ana Sayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Odev4SayfaA(),
                    ));
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
              child: const Text("SAYFA A' ya GİT"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Odev4SayfaX(),
                    ));
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
              child: const Text("SAYFA X' e GİT"),
            ),
          ],
        ),
      ),
    );
  }
}
