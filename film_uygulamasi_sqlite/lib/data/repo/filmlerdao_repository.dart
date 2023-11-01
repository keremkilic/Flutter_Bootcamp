import 'package:film_uygulamasi_sqlite/data/entity/filmler.dart';
import 'package:film_uygulamasi_sqlite/sqlite/veritabani_yardimcisi.dart';

class FilmlerDaoRepository {
  Future<List<FilmlerNesnesi>> filmleriGoster() async {
    var db = await VeritabaniYardimcisi.veritabaniErisim();
    List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM filmler");

    return List.generate(maps.length, (index) {
      var satir = maps[index];
      return FilmlerNesnesi(film_id: satir['film_id'], film_adi: satir['film_adi'], film_resim_adi: satir['film_resim_adi'], film_fiyat: satir['film_fiyat']);
    });

  }

}