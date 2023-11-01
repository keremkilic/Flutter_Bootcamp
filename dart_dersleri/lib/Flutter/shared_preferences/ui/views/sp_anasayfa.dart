import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SPAnaSayfa extends StatefulWidget {
  const SPAnaSayfa({Key? key}) : super(key: key);

  @override
  State<SPAnaSayfa> createState() => _SPAnaSayfaState();
}

class _SPAnaSayfaState extends State<SPAnaSayfa> {
  int sayac = 0;

  @override
  void initState() {
    super.initState();
    //test();
    sayacKontrol();
  }

  Future<void> sayacKontrol() async {
    var sp = await SharedPreferences.getInstance();
    sayac = sp.getInt("sayac") ?? 0;
    setState(() {
      sayac = sayac + 1;
    });
    sp.setInt("sayac", sayac);
  }

  Future<void> test() async {
    var sp = await SharedPreferences.getInstance();

    //Veri kaydı
    sp.setString("ad", "Ahmet");
    sp.setInt("yas", 23);
    sp.setDouble("boy", 1.78);
    sp.setBool("bekar", true);

    var arkadasListe = <String>[];
    arkadasListe.add("Ali");
    arkadasListe.add("Ece");
    sp.setStringList("arkadasListe", arkadasListe);

    //Veri silme
    //sp.remove("ad");

    //Veri okuma
    String gelenAd = sp.getString("ad") ?? "isim yok";
    int gelenYas = sp.getInt("yas") ?? 0;
    double gelenBoy = sp.getDouble("boy") ?? 0.0;
    bool gelenMedenihal = sp.getBool("bekar") ?? false;
    print("Gelen Ad    : $gelenAd");
    print("Gelen Yas   : $gelenYas");
    print("Gelen Boy   : $gelenBoy");
    print("Gelen Bekar : $gelenMedenihal");

    var gelenArkadasListe = sp.getStringList("arkadasListe") ?? <String>[];

    if(gelenArkadasListe != null) {
      for(var a in arkadasListe) {
        print("Arkadaş : $a");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Shared Preferences"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Açılış sayfası : $sayac", style: TextStyle(fontSize: 45), )
          ],
        ),
      ),
    );
  }
}
