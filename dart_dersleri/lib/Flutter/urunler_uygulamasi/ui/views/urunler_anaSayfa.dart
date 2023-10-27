import 'package:dart_dersleri/Flutter/urunler_uygulamasi/data/entity/urunler.dart';
import 'package:dart_dersleri/Flutter/urunler_uygulamasi/ui/views/urunler_detay.dart';
import 'package:flutter/material.dart';

class UrunlerAnaSayfa extends StatefulWidget {
  const UrunlerAnaSayfa({Key? key}) : super(key: key);

  @override
  State<UrunlerAnaSayfa> createState() => _UrunlerAnaSayfaState();
}

class _UrunlerAnaSayfaState extends State<UrunlerAnaSayfa> {
  Future<List<UrunlerNesne>> urunleriYukle() async {
    var urunlerListesi = <UrunlerNesne>[];
    var u1 = UrunlerNesne(
        urun_id: 1,
        urun_adi: "Macbook Pro 14",
        urun_resim_adi: "bilgisayar.png",
        urun_fiyat: 43000);
    var u2 = UrunlerNesne(
        urun_id: 2,
        urun_adi: "Rayban Club Master",
        urun_resim_adi: "gozluk.png",
        urun_fiyat: 2500);
    var u3 = UrunlerNesne(
        urun_id: 3,
        urun_adi: "Sony ZX Series",
        urun_resim_adi: "kulaklik.png",
        urun_fiyat: 40000);
    var u4 = UrunlerNesne(
        urun_id: 4,
        urun_adi: "Gio Armani",
        urun_resim_adi: "parfum.png",
        urun_fiyat: 2000);
    var u5 = UrunlerNesne(
        urun_id: 5,
        urun_adi: "Casio X Series",
        urun_resim_adi: "saat.png",
        urun_fiyat: 8000);
    var u6 = UrunlerNesne(
        urun_id: 6,
        urun_adi: "Dyson V8",
        urun_resim_adi: "supurge.png",
        urun_fiyat: 18000);
    var u7 = UrunlerNesne(
        urun_id: 7,
        urun_adi: "Iphone 13",
        urun_resim_adi: "telefon.png",
        urun_fiyat: 32000);
    urunlerListesi.add(u1);
    urunlerListesi.add(u2);
    urunlerListesi.add(u3);
    urunlerListesi.add(u4);
    urunlerListesi.add(u5);
    urunlerListesi.add(u6);
    urunlerListesi.add(u7);
    return urunlerListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ürünler"),
      ),
      body: FutureBuilder<List<UrunlerNesne>>(
        future: urunleriYukle(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var urunler = snapshot.data;
            return ListView.builder(
              itemCount: urunler!.length,
              itemBuilder: (context, index) {
                var urun = urunler[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UrunlerDetay(urun: urun),))
                        .then((value) {
                      print("Anasayfaya dönüldü");
                    });
                  },
                  child: Card(
                    color: Colors.white38,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                              height: 128,
                              width: 128,
                              child: Image.asset("resimler/${urun.urun_resim_adi}")),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(urun.urun_adi, style: TextStyle(fontSize: 20),),
                            const SizedBox(height: 10),
                            Text("${urun.urun_fiyat} ₺ ", style: TextStyle(fontSize: 16, color: Colors.grey.shade700, fontWeight: FontWeight.bold),),
                            const SizedBox(height: 10),
                            ElevatedButton(onPressed: () {
                              print("${urun.urun_adi} sepete eklendi");
                            }, child: const Text("Sepete Ekle"), ),
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center();
          }
        },
      ),
    );
  }
}
