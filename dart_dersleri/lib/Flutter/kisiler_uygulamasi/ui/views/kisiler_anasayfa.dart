import 'package:dart_dersleri/Flutter/kisiler_uygulamasi/data/entity/kisiler.dart';
import 'package:dart_dersleri/Flutter/kisiler_uygulamasi/ui/views/kisiler_kayit_detay.dart';
import 'package:dart_dersleri/Flutter/kisiler_uygulamasi/ui/views/kisiler_kayit_ekleme.dart';
import 'package:flutter/material.dart';

class KisiAnaSayfa extends StatefulWidget {
  const KisiAnaSayfa({Key? key}) : super(key: key);

  @override
  State<KisiAnaSayfa> createState() => _KisiAnaSayfaState();
}

class _KisiAnaSayfaState extends State<KisiAnaSayfa> {
  bool aramaYapiliyorMu = false;

  Future<void> ara(String aramaKelimesi) async {
    print("Kisi Ara : $aramaKelimesi");
  }

  Future<List<Kisiler>> kisileriYukle() async {
    var kisilerListesi = <Kisiler>[];
    var k1 = Kisiler(kisi_id: 1, kisi_ad: "Ahmet", kisi_tel: "11111");
    var k2 = Kisiler(kisi_id: 2, kisi_ad: "Zeynep", kisi_tel: "22222");
    var k3 = Kisiler(kisi_id: 3, kisi_ad: "Beyza", kisi_tel: "33333");
    kisilerListesi.add(k1);
    kisilerListesi.add(k2);
    kisilerListesi.add(k3);
    return kisilerListesi;
  }

  Future<void> sil(int kisi_id) async {
    print("Kisi Sil : $kisi_id");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: aramaYapiliyorMu
            ? TextField(
                decoration: const InputDecoration(hintText: "Ara"),
                onChanged: (aramaSonucu) {
                  ara(aramaSonucu);
                },
              )
            : const Text("Kişiler"),
        actions: [
          aramaYapiliyorMu
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      aramaYapiliyorMu = false;
                    });
                  },
                  icon: const Icon(Icons.clear))
              : IconButton(
                  onPressed: () {
                    setState(() {
                      aramaYapiliyorMu = true;
                    });
                  },
                  icon: const Icon(Icons.search_outlined)),
        ],
      ),
      body: FutureBuilder<List<Kisiler>>(
        future: kisileriYukle(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var kisilerListesi = snapshot.data;
            return ListView.builder(
              itemCount: kisilerListesi!.length,
              itemBuilder: (context, index) {
                var kisi = kisilerListesi[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => KisiDetaySayfa(kisi: kisi),
                        )).then((value) {
                      print("Anasayfaya dönüldü");
                    });
                  },
                  child: Card(
                    color: Colors.deepOrange,
                    child: SizedBox(
                      height: 100,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  kisi.kisi_ad,
                                  style: const TextStyle(fontSize: 20, color: Colors.white),
                                ),
                                Text(kisi.kisi_tel,
                                  style: const TextStyle(color: Colors.black),),
                              ],
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            icon: const Icon(Icons.cancel_outlined,
                                size: 30,
                                color: Colors.black54),
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("${kisi.kisi_ad} silinsin mi ?"),
                                  action: SnackBarAction(label: "EVET", onPressed: () {
                                    sil(kisi.kisi_id);
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        const SnackBar(content: Text("Kayıt silindi"),
                                    ),);
                                  },),
                                  )
                              );
                            },
                          ),
                        ],
                      ),
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
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const KisiKayitSayfa(),
              )).then((value) {
            print("Anasayfaya dönüldü");
          });
        },
      ),
    );
  }
}
