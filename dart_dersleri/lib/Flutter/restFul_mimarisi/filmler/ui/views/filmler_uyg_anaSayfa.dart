import 'package:dart_dersleri/Flutter/restFul_mimarisi/filmler/data/entity/filmler.dart';
import 'package:dart_dersleri/Flutter/restFul_mimarisi/filmler/ui/cubit/filmler_anasayfa_cubit.dart';
import 'package:dart_dersleri/Flutter/restFul_mimarisi/filmler/ui/views/filmler_uyg_detay.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilmlerUygAnaSayfa extends StatefulWidget {
  const FilmlerUygAnaSayfa({Key? key}) : super(key: key);

  @override
  State<FilmlerUygAnaSayfa> createState() => _FilmlerUygAnaSayfaState();
}

class _FilmlerUygAnaSayfaState extends State<FilmlerUygAnaSayfa> {

  @override
  void initState() {
    super.initState();
    context.read<FilmlerAnaSayfaCubit>().filmleriGoster();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Filmler"),),
      body: BlocBuilder<FilmlerAnaSayfaCubit, List<Filmler>>(
        builder: (context, filmlerListesi) {
          if(filmlerListesi.isNotEmpty) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1 / 1.8),
              itemCount: filmlerListesi.length,
              itemBuilder: (context, index) {
                var film = filmlerListesi[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FilmlerUygDetay(filmler: film),))
                        .then((value) {
                      context.read<FilmlerAnaSayfaCubit>().filmleriGoster();
                    });

                  },
                  child: Card(
                    color: Colors.grey.shade300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network("http://kasimadalan.pe.hu/filmler_yeni/resimler/${film.resim}"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("${film.fiyat} ₺", style: const TextStyle(fontSize: 24),),
                            ElevatedButton(onPressed: () {
                              print("${film.ad} sepete eklendi");
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
