void main() {
  //Sabitler
  // final, const, Java(final), Swift(let), Kotlin(val)

  int sayi = 30;
  print("Sayi 1 : $sayi");
  sayi = 100;
  print("Sayi 2 : $sayi");


  // Kodlamayı çalıştırdığımda hafızada oluşur.
  final int sayi1 = 20; // bir kere değer ataması yapılabilir, başka değer aktarılamaz.
  print("Sayi 3 : $sayi1");
  //sayi1 = 100; // The final variable 'sayi1' can only be set once. başka değer aktarılamaz.

  // Değişkeni tanımladığımızda hafızada oluşur.
  // Görsel nesnelerde kullanırız. Button, Text, vb...
  const int sayi2 = 50;
  print("Sayi 4 : $sayi2");
  //sayi2 = 20; // Constant variables can't be assigned a value. başka değer aktarılamaz.


}