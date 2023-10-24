import 'dart:collection';

void main() {
  //Tanımlama
  var plakalar = HashSet.from([16, 34, 6]);
  var meyveler = HashSet<String>();

  //Değer Atama
  meyveler.add("Kiraz");
  meyveler.add("Muz");
  meyveler.add("Elma");
  print(meyveler);

  //Ekleme
  meyveler.add("Amasya Elması");
  print(meyveler);

  //Okuma
  String meyve = meyveler.elementAt(2);
  print(meyve);

  //Boyut
  print("Boyut : ${meyveler.length}");
  print("Boş Kontrol : ${meyveler.isEmpty}");


  for(var meyve in meyveler) {
    print("Sonuç : ${meyve}");
  }

  // index ile listeleme
  for(var i=0; i<meyveler.length; i++) {
    print("$i. indexte bulunan ürünün adı ${meyveler.elementAt(i)}");
  }

  //silme işlemi
  meyveler.remove("Elma");
  print(meyveler);

  // listeyi temizlemek için
  meyveler.clear();
  print(meyveler);


}