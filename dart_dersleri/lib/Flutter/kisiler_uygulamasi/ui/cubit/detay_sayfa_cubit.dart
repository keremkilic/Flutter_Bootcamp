import 'package:dart_dersleri/Flutter/kisiler_uygulamasi/data/repo/kisilerdao_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetaySayfaCubit extends Cubit<void> {
  DetaySayfaCubit() : super(0);

  var kRepo = KisilerDaoRepository();

  Future<void> guncelle(int kisi_id, String kisi_ad, String kisi_tel) async {
    await kRepo.guncelle(kisi_id, kisi_ad, kisi_tel);
  }
}
