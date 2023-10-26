class Odev2_2Sayfa {
    // İç Açıların Toplamanı
    double IcAciToplama(int kenarSayisi) {
      double toplam = (kenarSayisi - 2) * 180 / kenarSayisi;
      return toplam;
    }

    // Maaş Hesaplama
    int maasHesaplama(int gunSayisi) {
      int calismaSaati = gunSayisi * 8;
      print("Çalışma Saati : $calismaSaati");

      int maas = 0;

      if(calismaSaati > 150) {
        int mesaiFazlasi = calismaSaati - 150;
        maas = 150 * 40 + mesaiFazlasi * 80;
      }else {
        maas = calismaSaati * 40;
      }
      return maas;
    }

    //OTOPARK UCRET HESAPLAMA
    int otoparkUcretHesaplama(int saat) {
      int ucret = 0;

      if(saat > 1) {
         int saatFazlasi = saat - 1;
         ucret = 50 + saatFazlasi * 10;
      }else {
        ucret = 50;
      }
      return ucret;
    }

}