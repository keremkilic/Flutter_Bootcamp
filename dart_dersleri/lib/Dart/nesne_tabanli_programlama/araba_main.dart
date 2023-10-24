import 'package:dart_dersleri/Dart/nesne_tabanli_programlama/araba.dart';
import 'package:dart_dersleri/Dart/nesne_tabanli_programlama/fonksiyonlar.dart';

void main() {
  //Nesne oluşturma
 /*
  var toyota = Araba(renk: "Gri", hiz: 100, calisiyorMu: true);

  print("********Değer Atama Öncesi********");
  toyota.bilgiAl();

  //Değer atama
  toyota.renk = "Mavi";
  toyota.hiz = 0;
  toyota.calisiyorMu  = false;

  print("********Değer Atama Sonrası********");
  toyota.bilgiAl();
  toyota.calistir();
  print("**********");
  toyota.bilgiAl();


  var nissan = Araba(renk: "Bordo", hiz: 0, calisiyorMu: false);

  print("********Değer Atama Öncesi********");
  nissan.bilgiAl();

  nissan.renk = "Kırmızı";
  nissan.hiz = 150;
  nissan.calisiyorMu  = true;

  print("********Değer Atama Sonrası********");
  nissan.bilgiAl();
  print("**********");
  nissan.durdur();
  nissan.bilgiAl();
  nissan.calistir();
  print("//////////////////////////");
  nissan.hizlan(23);
  nissan.bilgiAl();
  print("//////////////////////////");
  nissan.yavasla(13);
  nissan.bilgiAl();
  print("**********");
*/
  var f = Fonksiyonlar();
  f.selamla1();

  var gelenSonuc = f.selamla2();
  print("Gelen Sonuc : $gelenSonuc");

  f.selamla3("Zeynep");

  var gelenToplam = f.toplama(10, 20);
  print("Toplama Sonucu : $gelenToplam");

}