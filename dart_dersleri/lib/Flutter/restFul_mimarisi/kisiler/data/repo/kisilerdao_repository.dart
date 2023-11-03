import 'dart:convert';

import 'package:dart_dersleri/Flutter/restFul_mimarisi/kisiler/data/entity/kisiler.dart';
import 'package:dart_dersleri/Flutter/restFul_mimarisi/kisiler/data/entity/kisiler_cevap.dart';
import 'package:dio/dio.dart';

class KisilerDaoRepository {
  List<Kisiler> parseKisiler(String cevap) {
    return KisilerCevap.fromJson(json.decode(cevap)).kisiler;
  }

  Future<void> kaydet(String kisi_ad, String kisi_tel) async {
    var url = "http://kasimadalan.pe.hu/kisiler/insert_kisiler.php";
    var veri = {
      "kisi_ad": kisi_ad,
      "kisi_tel": kisi_tel,
    };
    var cevap = await Dio().post(url, data: FormData.fromMap(veri));
    print("Kişi kaydet : ${cevap.data.toString()}");
  }

  Future<void> guncelle(int kisi_id, String kisi_ad, String kisi_tel) async {
    var url = "http://kasimadalan.pe.hu/kisiler/update_kisiler.php";
    var veri = {
      "kisi_id": kisi_id,
      "kisi_ad": kisi_ad,
      "kisi_tel": kisi_tel,
    };
    var cevap = await Dio().post(url, data: FormData.fromMap(veri));
    print("Kişi Güncelle : ${cevap.data.toString()}");

    print("Kişi Güncelle : $kisi_id - $kisi_ad - ${kisi_tel}");
  }

  Future<void> sil(int kisi_id) async {
    var url = "http://kasimadalan.pe.hu/kisiler/delete_kisiler.php";
    var veri = {"kisi_id": kisi_id};
    var cevap = await Dio().post(url, data: FormData.fromMap(veri));
    print("Kişi Silindi : ${cevap.data.toString()}");
  }

  Future<List<Kisiler>> kisileriYukle() async {
    var url = "http://kasimadalan.pe.hu/kisiler/tum_kisiler.php";
    var cevap = await Dio().get(url);
    return parseKisiler(cevap.data.toString());
  }

  Future<List<Kisiler>> ara(String aramaKelimesi) async {
    var url = "http://kasimadalan.pe.hu/kisiler/tum_kisiler_arama.php";
    var veri = {"kisi_ad": aramaKelimesi};
    var cevap = await Dio().post(url, data: FormData.fromMap(veri));
    return parseKisiler(cevap.data.toString());
  }
}
