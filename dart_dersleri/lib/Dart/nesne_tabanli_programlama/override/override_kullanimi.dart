import 'package:dart_dersleri/Dart/nesne_tabanli_programlama/override/hayvan.dart';
import 'package:dart_dersleri/Dart/nesne_tabanli_programlama/override/kedi.dart';
import 'package:dart_dersleri/Dart/nesne_tabanli_programlama/override/kopek.dart';
import 'package:dart_dersleri/Dart/nesne_tabanli_programlama/override/memeli.dart';

void main() {
  var hayvan = Hayvan();
  var memeli = Memeli();
  var kedi = Kedi();
  var kopek = Kopek();

  hayvan.sesCikar();  // Kalıtım yok, kendi methoduna erişti
  memeli.sesCikar();  // Kalıtım var, üst sınıfın methoduna erişti.
  kedi.sesCikar();    // Kalıtım var, kendi methoduna erişti.
  kopek.sesCikar();   // Kalıtım var, kendi methoduna erişti.

}