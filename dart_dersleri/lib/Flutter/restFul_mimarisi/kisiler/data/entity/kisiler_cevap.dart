
import 'package:dart_dersleri/Flutter/restFul_mimarisi/kisiler/data/entity/kisiler.dart';

class KisilerCevap {
  List<Kisiler> kisiler;
  int success;

  KisilerCevap({required this.kisiler, required this.success});

  factory KisilerCevap.fromJson(Map<String, dynamic> json) {
    var jsonArray = json["kisiler"] as List;
    int success = json["success"] as int;

    var kisiler = jsonArray.map((jsonArrayNesnesi) => Kisiler.fromJson(jsonArrayNesnesi)).toList();

    return KisilerCevap(
      kisiler: kisiler,
      success: success,
    );
  }
}
