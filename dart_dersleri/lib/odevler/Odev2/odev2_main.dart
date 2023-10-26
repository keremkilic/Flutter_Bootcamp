import 'package:dart_dersleri/odevler/Odev2/odev2_1Sayfa.dart';
import 'package:dart_dersleri/odevler/Odev2/odev2_2Sayfa.dart';

void main() {
  var o2 = Odev2_1Sayfa();

  //Kilometreyi Mile çevirme
  double sonuc = o2.soru1(7.9);
  print(sonuc);

  //Dikdörgen Alan Hesaplama
  o2.dikdortgen(4, 6);

  //FAKTORİYEL HESAPLAMA
  int gelenDeger = o2.faktoriyel(5);
  print("Faktoriyel Sonuc : $gelenDeger");

  //kelime içinde kaç adet e harfi
  o2.harfBulma("ankara", "a");

  //İç Açıların toplamı
  var o2_2 = Odev2_2Sayfa();
  double icAciSonuc = o2_2.IcAciToplama(6);
  print("İç Açıların Toplamı : $icAciSonuc");

  // Maas hesaplama
  int gelenMaas = o2_2.maasHesaplama(15);
  print("Maaş : $gelenMaas");


  //OTOPARK UCRET HESAPLAMA
  int gelenUcret =o2_2.otoparkUcretHesaplama(6);
  print("Otopark ucreti : $gelenUcret");


}