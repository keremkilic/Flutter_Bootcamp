import 'package:dart_dersleri/Flutter/restFul_mimarisi/kisiler/data/entity/kisiler.dart';
import 'package:dart_dersleri/Flutter/restFul_mimarisi/kisiler/data/repo/kisilerdao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnaSayfaCubit extends Cubit<List<Kisiler>> {
  AnaSayfaCubit() : super(<Kisiler>[]);

  var kRepo = KisilerDaoRepository();

  Future<void> kisileriYukle() async {
    var liste = await kRepo.kisileriYukle();
    emit(liste);
  }

  Future<void> ara(String aramaKelimesi) async {
    var liste = await kRepo.ara(aramaKelimesi);
    emit(liste);
  }

  Future<void> sil(int kisi_id) async {
    await kRepo.sil(kisi_id);
    await kisileriYukle();
  }
}
