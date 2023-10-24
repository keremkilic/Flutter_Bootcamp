import 'package:dart_dersleri/odevler/Odev2/odev2_1Sayfa.dart';
import 'package:dart_dersleri/odevler/Odev2/odev2_2Sayfa.dart';

void main() {
  var o2 = Odev2_1Sayfa();

  //Kilometreyi Mile çevirme
  double sonuc = o2.soru1(45);
  print(sonuc);

  //Dikdörgen Alan Hesaplama
  o2.dikdortgen(10, 20);

  //FAKTORİYEL HESAPLAMA
  int gelenDeger = o2.faktoriyel(4);
  print("Faktoriyel Sonuc : $gelenDeger");

  //kelime içinde kaç adet e harfi
  o2.harfBulma("eskisehir", "e");

  //İç Açıların toplamı
  var o2_2 = Odev2_2Sayfa();
  int icAciSonuc = o2_2.IcAciToplama(5);
  print("İç Açıların Toplamı : $icAciSonuc");

  // Maas hesaplama
  int gelenMaas = o2_2.maasHesaplama(20);
  print("Maaş : $gelenMaas");


  //OTOPARK UCRET HESAPLAMA
  int gelenUcret =o2_2.otoparkUcretHesaplama(3);
  print("Otopark ucreti : $gelenUcret");


}