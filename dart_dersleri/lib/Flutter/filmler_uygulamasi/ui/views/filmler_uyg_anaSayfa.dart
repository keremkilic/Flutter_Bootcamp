import 'package:dart_dersleri/Flutter/filmler_uygulamasi/data/entity/filmler.dart';
import 'package:dart_dersleri/Flutter/filmler_uygulamasi/ui/cubit/filmler_anasayfa_cubit.dart';
import 'package:dart_dersleri/Flutter/filmler_uygulamasi/ui/views/filmler_uyg_detay.dart';
import 'package:dart_dersleri/Flutter/kisiler_uygulamasi/ui/cubit/anasayfa_cubit.dart';
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
      body: BlocBuilder<FilmlerAnaSayfaCubit, List<FilmlerNesnesi>>(
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
