import 'package:dart_dersleri/Flutter/filmler_uygulamasi/data/entity/filmler.dart';
import 'package:dart_dersleri/Flutter/filmler_uygulamasi/data/repo/filmlerdao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilmlerAnaSayfaCubit extends Cubit<List<FilmlerNesnesi>> {
  FilmlerAnaSayfaCubit(): super(<FilmlerNesnesi>[]);

  var fRepo = FilmlerDaoRepository();

  Future<void> filmleriGoster() async {
    var liste = await fRepo.filmleriGoster();
    emit(liste);
  }
}