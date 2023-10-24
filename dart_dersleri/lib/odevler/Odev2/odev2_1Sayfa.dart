class Odev2_1Sayfa {
  //Kilometreyi Mile çevirme
  double soru1(double km) {
      var mile = km * 0.621371192;
      return mile;
  }
  //Dikdörgen Alan Hesaplama
  void dikdortgen(int kisaKenar, int uzunKenar) {
      var alan = kisaKenar * uzunKenar;
      print(alan);
  }

  //FAKTORİYEL HESAPLAMA
  int faktoriyel(int sayi) {
    int sonuc = 1;
    for(var i=1;i<sayi+1;i++) {
      sonuc = sonuc * i;
    }
    return sonuc;
  }

  //kelime içinde kaç adet e harfi
  void harfBulma(String kelime, String harf) {
    int sayac = 0;
    for(var i = 0; i<kelime.length; i++) {
      if(kelime[i] == harf) {
        sayac = sayac + 1;
      }
    }
    print("Harf Adeti = $sayac");
  }

}