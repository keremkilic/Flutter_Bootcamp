import 'package:dart_dersleri/Flutter/calisma_yapisi/kisiler.dart';
import 'package:dart_dersleri/Flutter/calisma_yapisi/oyun_ekrani.dart';
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
  bool kontrol = false;

  @override
  void initState() {
    super.initState();
    print("initState metodu çalıştı : $sayac");
  }

  Future<int> toplama(int sayi1, int sayi2) async {
    int toplam = sayi1 + sayi2;
    return toplam;
  }

  @override
  Widget build(BuildContext context) {
    print("Build metodu çalıştı : $sayac");
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnaSayfa"),
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
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Tıkla",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  var kisi =
                      Kisiler(ad: "Ahmet", yas: 23, boy: 1.81, bekarMi: false);
                  Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OyunEkrani(kisi: kisi)))
                      .then((value) {
                    print("Anasayfaya dönüldü");
                  });
                });
              },
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Başla",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Visibility(visible: kontrol, child: const Text("Merhaba")),
            Text(
              kontrol ? "Merhaba" : "Güle Güle",
              style: TextStyle(
                color: kontrol ? Colors.blue : Colors.red,
              ),
            ),
            (() {
              if (kontrol) {
                return const Text(
                  "Merhaba",
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                );
              } else {
                return const Text(
                  "Güle Güle",
                  style: TextStyle(fontSize: 18, color: Colors.red),
                );
              }
            }()),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  kontrol = true;
                });
              },
              child: Text("Durum 1 (True)"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  kontrol = false;
                });
              },
              child: Text("Durum 1 (False)"),
            ),
            FutureBuilder<int>(
              future: toplama(10, 20),
              builder: (context, snapshot) {
                if(snapshot.hasError) {
                  return const Text("Hata oluştu");
                } if(snapshot.hasData) {
                  return Text("Sonuç : ${snapshot.data}");
                } else {
                  return const Text("Sonuç yok");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
