import 'package:dart_dersleri/Dart/nesne_tabanli_programlama/composition/kategoriler.dart';
import 'package:dart_dersleri/Dart/nesne_tabanli_programlama/composition/filmler.dart';
import 'package:dart_dersleri/Dart/nesne_tabanli_programlama/composition/yonetmenler.dart';

void main () {

  var k1 = Kategoriler(kategori_id: 1, kategori_adi: "Dram");
  var k2 = Kategoriler(kategori_id: 2, kategori_adi: "Bilim Kurgu");

  var y1 = Yonetmenler(yonetmen_id: 1, yonetmen_adi: "Quentin Tarantino");
  var y2 = Yonetmenler(yonetmen_id: 2, yonetmen_adi: "Christopher Nolan");


  var f1 = Filmler(film_id: 1, film_adi: "Django", film_yil: 2013, kategori: k1, yonetmen: y2);

  print("Film Id        : ${f1.film_id}");
  print("Film Adi       : ${f1.film_adi}");
  print("Film Yil       : ${f1.film_yil}");
  print("Film Kategori  : ${f1.kategori.kategori_adi}");
  print("Film Yönetmen  : ${f1.yonetmen.yonetmen_adi}");

}