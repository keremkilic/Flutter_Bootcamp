void main() {
  int yas = 19;
  String isim = "Ahmet";

  if(yas >= 18) {
    print("Reşitsiniz");
  } else {
    print("Reşit değilsiniz");
  }

  print("*********************");

  if(isim == "Mehmet") {
    print("Merhaba Mehmet");
  } else if(isim == "Ahmet") {
    print("Merhaba Ahmet");
  } else {
    print("Tanınmayan kişi");
  }

  print("*********************");

  String ka = "admin";
  int s = 123456;

  if(ka == "admin" && s == 123456){
    print("Hoşgeldiniz");
  } else {
    print("Hatalı giriş yaptınız");
  }

  print("*********************");

  int sayi = 10;

  if(sayi == 9 || sayi == 10) {
    print("Sayı 9 veya 10'dur");
  }else {
    print("Sayı 9 veya 10 değildir");
  }

  print("*********************");


}