import 'dart:collection';

void main() {
  //Tanımlama
  var sayilar = {"Bir": 1, "İki" : 2};
  var iller = HashMap<int, String>();

  //Değer ataması
  iller[16] = "Bursa";
  iller[34] = "İstanbul";
  print(iller);

  //Güncelleme
  iller[16] = "Yeni Bursa";
  print(iller);

  //veri okuma
  String il = iller[34]!;
  print(il);

  //boyut
  print("Boyut : ${iller.length}");
  print("Boş kontrol : ${iller.isEmpty}");

  //döngü ile
  var anahtarlar = iller.keys;
  for(var a in anahtarlar) {
    print("$a -> ${iller[a]}");
  }

  //silme
  iller.remove(16);
  print(iller);

  //temizleme
  iller.clear();
  print(iller);


}