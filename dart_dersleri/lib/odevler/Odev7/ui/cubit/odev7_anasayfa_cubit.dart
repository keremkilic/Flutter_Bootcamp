import 'package:dart_dersleri/odevler/Odev7/data/entity/odev7_toDos.dart';
import 'package:dart_dersleri/odevler/Odev7/data/repo/odev7_toDosDao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Odev7AnaSayfaCubit extends Cubit<List<ToDo>> {
  Odev7AnaSayfaCubit():super(<ToDo>[]);

  var toDoRepo = Odev7toDoDaoRepository();

  Future<void> toDoliste() async {
    var liste = await toDoRepo.toDoliste();
    emit(liste);
  }

  Future<void> ara(String aramaKelimesi) async {
    var liste = await toDoRepo.ara(aramaKelimesi);
    emit(liste);
  }

  Future<void> sil(int id) async {
    await toDoRepo.sil(id);
    await toDoliste();
  }


}