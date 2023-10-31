import 'package:dart_dersleri/Flutter/filmler_uygulamasi/data/entity/filmler.dart';

class FilmlerDaoRepository {

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

}