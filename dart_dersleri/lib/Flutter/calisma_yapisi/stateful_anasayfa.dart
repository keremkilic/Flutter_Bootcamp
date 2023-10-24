import 'package:dart_dersleri/Flutter/const/renkler.dart';
import 'package:flutter/material.dart';

class StatefullAnaSayfa extends StatefulWidget {
  const StatefullAnaSayfa({Key? key}) : super(key: key);

  @override
  State<StatefullAnaSayfa> createState() => _StatefullAnaSayfaState();
}

//Flutter arayüzün içinde butona tıklandığında ekranda değişiklik olmasını istiyorsak statefulWidget kullanılır.

class _StatefullAnaSayfaState extends State<StatefullAnaSayfa> {
  int sayac = 0;

  @override
  Widget build(BuildContext context) {
    print("Build metodu çalıştı : $sayac");
    return Scaffold(
      appBar: AppBar(
        title: Text("AnaSayfa"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Sonuç : $sayac",
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  sayac = sayac + 1;
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: const Text("Tıkla", style: const TextStyle(fontSize: 18),),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
