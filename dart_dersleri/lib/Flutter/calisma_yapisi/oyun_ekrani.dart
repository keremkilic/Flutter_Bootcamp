import 'package:dart_dersleri/Flutter/calisma_yapisi/kisiler.dart';
import 'package:dart_dersleri/Flutter/calisma_yapisi/sonuc_ekrani.dart';
import 'package:flutter/material.dart';

class OyunEkrani extends StatefulWidget {
  Kisiler kisi;

  OyunEkrani({required this.kisi});

  @override
  State<OyunEkrani> createState() => _OyunEkraniState();
}

class _OyunEkraniState extends State<OyunEkrani> {

  Future<bool> geriDonusTusu(BuildContext context) async {
    print("Navigation geri tuşu seçildi");
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Oyun Ekrani"),
        leading: IconButton(
          onPressed: () {
            print("AppBar geri tuşu seçildi");
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: WillPopScope(
        onWillPop: () => geriDonusTusu(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Kişinin Adı   :  ${widget.kisi.ad}"),
                  Text("Kişinin Yaşı  :  ${widget.kisi.yas}"),
                  Text("Kişinin Boyu  :  ${widget.kisi.boy}"),
                  Text("Kişi Bekar Mı :  ${widget.kisi.bekarMi}"),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SonucEkrani(),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Bitti",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
