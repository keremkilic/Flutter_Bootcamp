class MatematikRepository {

  int toplamaYap(String alinanSayi1, String alinanSayi2) {
    int sayi1 = int.parse(alinanSayi1);
    int sayi2 = int.parse(alinanSayi2);
    int toplam = sayi1 + sayi2;
    return toplam;
  }

  int carpmaYap(String alinanSayi1, String alinanSayi2) {
    int sayi1 = int.parse(alinanSayi1);
    int sayi2 = int.parse(alinanSayi2);
    int carpma = sayi1 * sayi2;
    return carpma;
  }
}