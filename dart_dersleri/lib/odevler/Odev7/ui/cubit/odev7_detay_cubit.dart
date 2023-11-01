import 'package:dart_dersleri/odevler/Odev7/data/repo/odev7_toDosDao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Odev7DetayCubit extends Cubit<void> {
  Odev7DetayCubit():super(0);

  var toDoRepo = Odev7toDoDaoRepository();

  Future<void> guncelle(int id, String name, String description) async {
    await toDoRepo.guncelle(id, name, description);
  }

}