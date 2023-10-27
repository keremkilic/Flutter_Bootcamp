import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uygulama_mimarisi/data/repo/matematik_repository.dart';

class AnasayfaCubit extends Cubit<int> {
  AnasayfaCubit():super(0);

  var mRepo = MatematikRepository();

  void toplamaYap(String alinanSayi1, String alinanSayi2) {
    emit(mRepo.toplamaYap(alinanSayi1, alinanSayi2));
  }

  void carpmaYap(String alinanSayi1, String alinanSayi2) {
    emit(mRepo.carpmaYap(alinanSayi1, alinanSayi2));
  }

}
