import 'package:dart_dersleri/Flutter/const/renkler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    print("Ekran yuksekliği : $ekranYuksekligi");
    print("Ekran genisliği : $ekranGenisligi");

    var d = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pizza",
          style:
              TextStyle(color: yaziRenk1, fontFamily: "Pacifico", fontSize: ekranGenisligi/19),
        ),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: ekranYuksekligi / 43),
            child: Text(
              d!.pizzaBaslik,
              style: TextStyle(
                  fontSize: 36, color: anaRenk, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Image.asset("assets/images/pizza_resim.png"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ChipButton(icerik : d.peynirYazi),
                ChipButton(icerik : d.sucukYazi),
                ChipButton(icerik : d.zeytinYazi),
                ChipButton(icerik : d.biberYazi),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  d.teslimatSure,
                  style: TextStyle(
                      fontSize: 22,
                      color: yaziRenk2,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    d.teslimatBaslik,
                    style: TextStyle(
                        fontSize: 22,
                        color: anaRenk,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  d.pizzaAciklama,
                  style: TextStyle(fontSize: 22, color: yaziRenk2),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  d.fiyat,
                  style: TextStyle(
                      fontSize: 44,
                      color: anaRenk,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                SizedBox(
                  width: ekranGenisligi / 2,
                  height: ekranYuksekligi / 14,
                  child: TextButton(
                    onPressed: () {},
                    //style: TextButton.styleFrom(backgroundColor: anaRenk),
                    style: TextButton.styleFrom(
                      backgroundColor: anaRenk,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                    child: Text(d.buttonYazi,
                        style: TextStyle(color: yaziRenk1, fontSize: 18)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ChipButton extends StatelessWidget {
  String icerik;
  ChipButton({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: anaRenk,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
      ),
      child: Text(icerik, style: TextStyle(color: yaziRenk1)),
    );
  }
}
