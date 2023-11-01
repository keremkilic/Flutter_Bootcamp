import 'package:dart_dersleri/odevler/Odev7/data/repo/odev7_toDosDao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Odev7KayitCubit extends Cubit<void> {
  Odev7KayitCubit(): super(0);

  var toDoRepo = Odev7toDoDaoRepository();

  Future<void> kaydet(String name, String description) async {
    await toDoRepo.kaydet(name, description);
  }

}