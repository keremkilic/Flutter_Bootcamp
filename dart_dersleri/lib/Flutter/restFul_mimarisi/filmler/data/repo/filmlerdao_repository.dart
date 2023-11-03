
import 'dart:convert';

import 'package:dart_dersleri/Flutter/restFul_mimarisi/filmler/data/entity/filmler.dart';
import 'package:dart_dersleri/Flutter/restFul_mimarisi/filmler/data/entity/filmler_cevap.dart';
import 'package:dio/dio.dart';

class FilmlerDaoRepository {

  List<Filmler> parseFilmler(String cevap) {
    return FilmlerCevap.fromJson(json.decode(cevap)).filmler;
  }

  Future<List<Filmler>> filmleriGoster() async {
    var url = "http://kasimadalan.pe.hu/filmler_yeni/tum_filmler.php";
    var cevap = await Dio().get(url);
    return parseFilmler(cevap.data.toString());
  }

}