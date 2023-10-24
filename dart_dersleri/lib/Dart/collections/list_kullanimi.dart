void main() {
  //Tanımlama
  var plakalar = [16,34,06]; // indexlerde 0 -> 16, 1 -> 34, 2 -> 06

  var meyveler = <String>[];
  meyveler.add("Muz");    // 0. index
  meyveler.add("Kiraz");  // 1. index
  meyveler.add("Elma");   // 2. index
  print(meyveler);

  //Güncelleme
  meyveler[1] = "Yeni Kiraz";
  print(meyveler);

  //Insert
  meyveler.insert(1, "Portakal");
  print(meyveler);

  //Veri Okuma
  String meyve = meyveler[2];
  print(meyve);

  //Boyut öğrenme
  print("Boyut : ${meyveler.length}");

  //For each
  for(var meyve in meyveler) {
    print("Sonuc : $meyve");
  }

  for(var i=0; i<meyveler.length; i++) {
    print("$i. -> ${meyveler[i]}");
  }

  //Tersleme işlemi
  print(meyveler);
  var liste = meyveler.reversed.toList();
  print(liste);

  //Harf sırasına göre sıralama
  meyveler.sort();
  print(meyveler);

  //Silme işlemi
  meyveler.removeAt(1);
  print(meyveler);

  //liste içini temizleme
  meyveler.clear();
  print(meyveler);

}