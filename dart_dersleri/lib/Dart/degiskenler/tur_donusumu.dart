void main() {
  //Sayısaldan sayısala dönüşüm
  int i = 56;
  double d = 78.67;

  int sonuc1 = d.toInt();
  double sonuc2 = i.toDouble();
  print("Sonuc 1 : $sonuc1"); // 78.67 => 78
  print("Sonuc 2 : $sonuc2"); // 56 => 56.0

  //Sayısaldan metine dönüşüm
  String sonuc3 = i.toString();
  String sonuc4 = d.toString();
  print("Sonuc 3 : $sonuc3"); // 56
  print("Sonuc 4 : $sonuc4"); // 78.67

  //Metinden sayısala dönüşüm
  String yazi1 = "25";
  String yazi2 = "51.45";

  int sonuc5 = int.parse(yazi1);
  double sonuc6 = double.parse(yazi2);
  print("Sonuc 5 : $sonuc5"); // 25
  print("Sonuc 6 : $sonuc6"); // 51.45

}