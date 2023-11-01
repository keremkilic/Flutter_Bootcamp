import 'package:film_uygulamasi_sqlite/data/entity/filmler.dart';
import 'package:film_uygulamasi_sqlite/data/repo/filmlerdao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilmlerAnaSayfaCubit extends Cubit<List<FilmlerNesnesi>> {
  FilmlerAnaSayfaCubit(): super(<FilmlerNesnesi>[]);

  var fRepo = FilmlerDaoRepository();

  Future<void> filmleriGoster() async {
    var liste = await fRepo.filmleriGoster();
    emit(liste);
  }
}