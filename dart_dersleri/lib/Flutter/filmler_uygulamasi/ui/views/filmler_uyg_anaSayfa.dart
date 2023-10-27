import 'package:dart_dersleri/Flutter/filmler_uygulamasi/data/entity/filmler.dart';
import 'package:dart_dersleri/Flutter/filmler_uygulamasi/ui/views/filmler_uyg_detay.dart';
import 'package:flutter/material.dart';

class FilmlerUygAnaSayfa extends StatefulWidget {
  const FilmlerUygAnaSayfa({Key? key}) : super(key: key);

  @override
  State<FilmlerUygAnaSayfa> createState() => _FilmlerUygAnaSayfaState();
}

class _FilmlerUygAnaSayfaState extends State<FilmlerUygAnaSayfa> {

  Future<List<FilmlerNesnesi>> filmleriGoster() async {
    var filmler = <FilmlerNesnesi>[];
    var f1 = FilmlerNesnesi(film_id: 1, film_adi: "Django", film_resim_adi: "django.png", film_fiyat: 24);
    var f2 = FilmlerNesnesi(film_id: 2, film_adi: "Inception", film_resim_adi: "inception.png", film_fiyat: 22);
    var f3 = FilmlerNesnesi(film_id: 3, film_adi: "Interstellar", film_resim_adi: "interstellar.png", film_fiyat: 32);
    var f4 = FilmlerNesnesi(film_id: 4, film_adi: "The Hateful Eight", film_resim_adi: "thehatefuleight.png", film_fiyat: 28);
    var f5 = FilmlerNesnesi(film_id: 5, film_adi: "The Pianist", film_resim_adi: "thepianist.png", film_fiyat: 35);
    var f6 = FilmlerNesnesi(film_id: 6, film_adi: "Anadoluda", film_resim_adi: "anadoluda.png", film_fiyat: 10);
    filmler.add(f1);
    filmler.add(f2);
    filmler.add(f3);
    filmler.add(f4);
    filmler.add(f5);
    filmler.add(f6);
    return filmler;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Filmler"),),
      body: FutureBuilder<List<FilmlerNesnesi>>(
        future: filmleriGoster(),
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            var filmler = snapshot.data;
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1 / 1.8),
              itemCount: filmler!.length,
              itemBuilder: (context, index) {
                var film = filmler[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FilmlerUygDetay(filmler: film),))
                        .then((value) {
                      print("Anasayfaya donüldü");
                    });

                  },
                  child: Card(
                    color: Colors.grey.shade300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("resimler/${film.film_resim_adi}"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("${film.film_fiyat} ₺", style: const TextStyle(fontSize: 24),),
                            ElevatedButton(onPressed: () {
                              print("${film.film_adi} sepete eklendi");
                            }, child: const Text("Sepet")),
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
