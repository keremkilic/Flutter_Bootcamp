import 'package:dart_dersleri/Flutter/kisiler_uygulamasi/data/entity/kisiler.dart';
import 'package:dart_dersleri/Flutter/kisiler_uygulamasi/ui/cubit/detay_sayfa_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class KisiDetaySayfa extends StatefulWidget {
  Kisiler kisi;

  KisiDetaySayfa({required this.kisi});

  @override
  State<KisiDetaySayfa> createState() => _KisiDetaySayfaState();
}

class _KisiDetaySayfaState extends State<KisiDetaySayfa> {
  TextEditingController tfKisiAd = TextEditingController();
  TextEditingController tfKisiTel = TextEditingController();

  @override
  void initState() {
    super.initState();
    var kisi = widget.kisi;
    tfKisiAd.text = kisi.kisi_ad;
    tfKisiTel.text = kisi.kisi_tel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kişi Detay Sayfa"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: tfKisiAd,
                decoration: InputDecoration(
                  hintText: "Kisi Ad",
                ),
              ),
              TextField(
                controller: tfKisiTel,
                decoration: InputDecoration(
                  hintText: "Kisi ",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<DetaySayfaCubit>().guncelle(
                      widget.kisi.kisi_id, tfKisiAd.text, tfKisiTel.text);
                },
                child: const Text("Güncelle"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
