import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqlite_calismasi/data/entity/kisiler.dart';
import 'package:sqlite_calismasi/data/repo/kisilerdao_repository.dart';

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
