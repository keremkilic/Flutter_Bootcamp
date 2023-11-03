import 'package:dart_dersleri/Flutter/restFul_mimarisi/filmler/data/entity/filmler.dart';
import 'package:dart_dersleri/Flutter/restFul_mimarisi/filmler/data/repo/filmlerdao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilmlerAnaSayfaCubit extends Cubit<List<Filmler>> {
  FilmlerAnaSayfaCubit(): super(<Filmler>[]);

  var fRepo = FilmlerDaoRepository();

  Future<void> filmleriGoster() async {
    var liste = await fRepo.filmleriGoster();
    emit(liste);
  }
}