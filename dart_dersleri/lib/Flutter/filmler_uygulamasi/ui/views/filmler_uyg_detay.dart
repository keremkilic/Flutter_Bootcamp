import 'package:dart_dersleri/Flutter/filmler_uygulamasi/data/entity/filmler.dart';
import 'package:flutter/material.dart';

class FilmlerUygDetay extends StatefulWidget {

  FilmlerNesnesi filmler;
  FilmlerUygDetay({required this.filmler});

  @override
  State<FilmlerUygDetay> createState() => _FilmlerUygDetayState();
}

class _FilmlerUygDetayState extends State<FilmlerUygDetay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.filmler.film_adi),),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("resimler/${widget.filmler.film_resim_adi}"),
          Text("${widget.filmler.film_fiyat} ₺", style: const TextStyle(fontSize: 50),),
        ],
      ),
      ),
    );
  }
}
