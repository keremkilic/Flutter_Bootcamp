import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqlite_calismasi/data/entity/kisiler.dart';
import 'package:sqlite_calismasi/ui/cubit/anasayfa_cubit.dart';
import 'package:sqlite_calismasi/ui/views/detay.dart';
import 'package:sqlite_calismasi/ui/views/kayit.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  bool aramaYapiliyorMu = false;

  Future<void> ara(String aramaKelimesi) async {
    print("Kisi Ara : $aramaKelimesi");
  }

   Future<void> sil(int kisi_id) async {
    print("Kisi Sil : $kisi_id");
  }

  @override
  void initState() {
    super.initState();
    context.read<AnaSayfaCubit>().kisileriYukle();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: aramaYapiliyorMu
            ? TextField(
          decoration: const InputDecoration(hintText: "Ara"),
          onChanged: (aramaSonucu) {
            context.read<AnaSayfaCubit>().ara(aramaSonucu);
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
                context.read<AnaSayfaCubit>().kisileriYukle();
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
      body: BlocBuilder<AnaSayfaCubit, List<Kisiler>>(
        builder: (context, kisilerListesi) {
          if (kisilerListesi.isNotEmpty) {
            return ListView.builder(
              itemCount: kisilerListesi.length,
              itemBuilder: (context, index) {
                var kisi = kisilerListesi[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => KisiDetaySayfa(kisi: kisi),
                        )).then((value) {
                      context.read<AnaSayfaCubit>().kisileriYukle();
                    });
                  },
                  child: Card(
                    color: Colors.blueGrey,
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
                            icon: const Icon(Icons.clear,
                                size: 30,
                                color: Colors.black54),
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text("${kisi.kisi_ad} silinsin mi ?"),
                                    action: SnackBarAction(
                                      label: "EVET",
                                      onPressed: () {
                                        context.read<AnaSayfaCubit>().sil(kisi.kisi_id);
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
            context.read<AnaSayfaCubit>().kisileriYukle();
          });
        },
      ),
    );
  }
}
