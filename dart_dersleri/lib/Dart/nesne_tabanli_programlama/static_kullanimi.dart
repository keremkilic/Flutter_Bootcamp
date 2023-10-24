import 'package:dart_dersleri/Dart/nesne_tabanli_programlama/a_sinifi.dart';

void main() {
  var a = ASinifi();
  
  //Standart kullanımı
  //print(a.degisken);
  //a.method();

  print("***********");

  //Sanal nesne - isimsiz nesne
  //print(ASinifi().degisken);
  //ASinifi().method();

  print("***********");

  // Static kullanımı
  print(ASinifi.degisken);
  ASinifi.method();

  print("***********");






}