class Araba {
  String renk;
  int hiz;
  bool calisiyorMu;

  Araba({required this.renk, required this.hiz, required this.calisiyorMu}); //Constructor, init method

  void calistir() { // fun. class değişkenlerine değer ataması yapılırsa buna Side effect(Yan etki) denir.
    calisiyorMu = true;
    hiz = 5;
  }

  void durdur() {
    calisiyorMu = false;
    hiz = 0;
  }

  void hizlan(int kacKm) {
    //hiz = hiz + kacKm;
    hiz += kacKm;
  }

  void yavasla(int kacKm) {
    //hiz = hiz - kacKm;
    hiz -= kacKm;
  }

  void bilgiAl() {
    print("Renk           : $renk");
    print("Hız            : $hiz");
    print("Calisiyor Mu   : $calisiyorMu");
  }

}
