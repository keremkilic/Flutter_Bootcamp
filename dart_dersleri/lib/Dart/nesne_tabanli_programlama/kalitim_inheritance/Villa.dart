import 'package:dart_dersleri/Dart/nesne_tabanli_programlama/kalitim_inheritance/Ev.dart';

class Villa extends Ev {
  bool garajVarMi;

  Villa({required this.garajVarMi, required int pencereSayisi}) : super(pencereSayisi : pencereSayisi); // Ev(pencereSayisi : 30) aynısı

}