void main() {
  //1. Compile error
  String x = "Hello";
  //x = 100; //String başka bir değer aktarılamaz, bu "Compile error" oluyor.

  //2. RunTime exception(error)
  //çalıştırdığımz zaman kodda oluşan hatalara denir.
  var liste = <String>[];
  liste.add("Ahmet"); // 0.indexte
  liste.add("Zeynep");// 1.indexte
  liste.add("Mehmet");// 2.indexte

  //String isim = liste[0];
  //print("Gelen isim : $isim");

  //String isim1 = liste[3]; // liste index sayısında olmayan bir index seçildiğinde aşağıdaki gibi hata verir, buna RunTime error denir.
  //print("Gelen isim 1: $isim1"); //Unhandled exception: RangeError (index): Invalid value: Not in inclusive range 0..1: 3

  //Try Catch bloğuna alındığında kodda hata varsa catch bloğuna düşer, program patlamaz.
  try{
    String isim = liste[2];
    print("Gelen isim : $isim");
  }catch(e){
    print("Listenin boyutunu aştınız");
  }

}