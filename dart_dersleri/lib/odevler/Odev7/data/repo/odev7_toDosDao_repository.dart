import 'package:dart_dersleri/odevler/Odev7/data/entity/odev7_toDos.dart';
import 'package:dart_dersleri/odevler/Odev7/sqlite/odev7_veritabani_yardimcisi.dart';

class Odev7toDoDaoRepository {

  Future<void> kaydet(String name, String description) async {
    var db = await Odev7VeritabaniYardimcisi.veritabaniErisim();
    var yeniTodo = Map<String, dynamic>();
    yeniTodo["name"] = name;
    yeniTodo["description"] = description;
    await db.insert("toDos", yeniTodo);
  }

  Future<void> guncelle(int id, String name, String description) async {
    var db = await Odev7VeritabaniYardimcisi.veritabaniErisim();
    var guncellenenTodo = Map<String, dynamic>();
    guncellenenTodo["name"] = name;
    guncellenenTodo["description"] = description;
    await db.update("toDos", guncellenenTodo, where: "id = ?" , whereArgs:  [id]);
  }

  Future<void> sil(int id) async {
    var db = await Odev7VeritabaniYardimcisi.veritabaniErisim();
    await db.delete("toDos", where: "id = ?" , whereArgs:  [id]);
  }

  Future<List<ToDo>> toDoliste() async {
    var db = await Odev7VeritabaniYardimcisi.veritabaniErisim();
    List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM toDos");

    return List.generate(maps.length, (index) {
      var satir = maps[index];
      return ToDo(id: satir["id"], name: satir["name"], description: satir["description"]);
    });
  }

  Future<List<ToDo>> ara(String aramaKelimesi) async {
    var db = await Odev7VeritabaniYardimcisi.veritabaniErisim();
    List<Map<String, dynamic>> maps = await db.rawQuery("SELECT * FROM toDos WHERE name like '%$aramaKelimesi%'");

    return List.generate(maps.length, (index) {
      var satir = maps[index];
      return ToDo(id: satir["id"], name: satir["name"], description: satir["description"]);
    });
  }
}