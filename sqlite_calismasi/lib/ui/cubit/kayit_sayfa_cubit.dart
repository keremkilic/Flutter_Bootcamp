import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqlite_calismasi/data/repo/kisilerdao_repository.dart';

class KayitSayfaCubit extends Cubit<void> {
  KayitSayfaCubit():super(0);

  var kRepo = KisilerDaoRepository();

  Future<void> kaydet(String kisi_ad, String kisi_tel) async {
    await kRepo.kaydet(kisi_ad, kisi_tel);
  }
}