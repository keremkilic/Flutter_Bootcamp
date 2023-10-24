import 'package:dart_dersleri/Dart/nesne_tabanli_programlama/Interface/myInterface.dart';

class ClassA implements MyInterface {
  @override
  int degisken = 10;

  @override
  void method1() {
    print("Method 1 çalıştı");
  }

  @override
  String method2() {
    return "Method 2 çalıştı";
  }

}