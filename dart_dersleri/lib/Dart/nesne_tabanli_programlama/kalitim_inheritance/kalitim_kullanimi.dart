import 'package:dart_dersleri/Dart/nesne_tabanli_programlama/kalitim_inheritance/Ev.dart';
import 'package:dart_dersleri/Dart/nesne_tabanli_programlama/kalitim_inheritance/Saray.dart';
import 'package:dart_dersleri/Dart/nesne_tabanli_programlama/kalitim_inheritance/Villa.dart';

void main() {
  var topkapiSarayi = Saray(kuleSayisi: 10, pencereSayisi: 300);
  print("Topkapı Sarayi Kule Sayısı       : ${topkapiSarayi.kuleSayisi}");
  print("Topkapı Sarayi Pencere Sayısı    : ${topkapiSarayi.pencereSayisi}");

  var bogazVilla = Villa(garajVarMi: true, pencereSayisi: 50);
  print("Villa Garaj Var Mı     : ${bogazVilla.garajVarMi}");
  print("Villa Pencere Sayısı   : ${bogazVilla.pencereSayisi}");

  //TİP KONTROLU
  if(topkapiSarayi is Saray) {
    print("Evet Saraydır");
  } else {
    print("Hayır Saray değildir.");
  }

  //DOWNCASTİNG -- üst class alta çevirmek için
  var ev = Ev(pencereSayisi: 10);
  var saray = ev as Saray;

  //UPCASTİNG -- alt class üste çevirmek için
  var s = Saray(kuleSayisi: 3, pencereSayisi: 100);
  Ev e = s;
 }