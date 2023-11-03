import 'package:dart_dersleri/Flutter/restFul_mimarisi/filmler/data/entity/filmler.dart';
import 'package:flutter/material.dart';

class FilmlerUygDetay extends StatefulWidget {

  Filmler filmler;
  FilmlerUygDetay({required this.filmler});

  @override
  State<FilmlerUygDetay> createState() => _FilmlerUygDetayState();
}

class _FilmlerUygDetayState extends State<FilmlerUygDetay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.filmler.ad),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network("http://kasimadalan.pe.hu/filmler_yeni/resimler/${widget.filmler.resim}"),
            Text("${widget.filmler.fiyat} ₺", style: const TextStyle(fontSize: 50),),
          ],
        ),
      ),
    );
  }
}
