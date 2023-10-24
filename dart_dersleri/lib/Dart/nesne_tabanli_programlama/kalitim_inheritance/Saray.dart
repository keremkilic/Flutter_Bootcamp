import 'package:dart_dersleri/Dart/nesne_tabanli_programlama/kalitim_inheritance/Ev.dart';

class Saray extends Ev { // bir class extends özelliği ile sadece bir kalitim alabilir.
  int kuleSayisi;

  Saray({required this.kuleSayisi, required int pencereSayisi}) : super(pencereSayisi: pencereSayisi);
}