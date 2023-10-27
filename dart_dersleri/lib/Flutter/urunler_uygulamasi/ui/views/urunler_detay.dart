import 'package:dart_dersleri/Flutter/urunler_uygulamasi/data/entity/urunler.dart';
import 'package:dart_dersleri/Flutter/urunler_uygulamasi/ui/views/urunler_anaSayfa.dart';
import 'package:flutter/material.dart';

class UrunlerDetay extends StatefulWidget {
  UrunlerNesne urun;


  UrunlerDetay({required this.urun});

  @override
  State<UrunlerDetay> createState() => _UrunlerDetayState();
}

class _UrunlerDetayState extends State<UrunlerDetay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.urun.urun_adi),
      leading: IconButton(onPressed: () {
        Navigator.of(context).popUntil((route) => route.isFirst);
      }, icon: const Icon(Icons.arrow_back_ios_new_outlined)),),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              Image.asset("resimler/${widget.urun.urun_resim_adi}"),
              Text(
              "${widget.urun.urun_fiyat.toString()} ₺", style: TextStyle(fontSize: 40),),
          ],
        ),
      ),
    );
  }
}
