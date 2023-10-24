import 'package:dart_dersleri/Flutter/const/renkler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../Flutter/tasarim_calismasi/detaySayfa.dart';

class Odev3 extends StatefulWidget {
  const Odev3({Key? key}) : super(key: key);

  @override
  State<Odev3> createState() => _Odev3State();
}

class _Odev3State extends State<Odev3> {
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
          "Burger",
          style: TextStyle(
            color: yaziRenk1,
            fontFamily: "DancingScript",
            fontWeight: FontWeight.bold,
            fontSize: ekranGenisligi / 10,
          ),
        ),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: ekranYuksekligi / 60),
            child: Text(
              d!.menuBaslik,
              style: TextStyle(
                fontSize: 38,
                color: menuTitleColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
            child: Text(
              d.menuDescription,
              style: TextStyle(
                fontSize: 14,
                color: yaziRenk2,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Image.network(
              "https://www.burgerking.com.tr/cmsfiles/products/whopper-menu.png?v=294",
              width: 250),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              d.garniturSecimi,
              style: TextStyle(
                  fontSize: 16, color: titleColor, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SelectedItems(title: d.domates),
              SelectedItems(title: d.sogan),
              SelectedItems(title: d.tursu),
              SelectedItems(title: d.mayonez)
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              d.patatesSecim,
              style: TextStyle(
                  fontSize: 16, color: titleColor, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SelectedItems(title: d.patatesK),
              SelectedItems(title: d.patatesO),
              SelectedItems(title: d.patatesB),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              d.icecekSecim,
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 16, color: titleColor, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 100, child: SelectedItems(title: d.kola)),
              SizedBox(width: 100, child: SelectedItems(title: d.fanta)),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text(
                  d.fiyat,
                  style: TextStyle(
                    fontSize: 25,
                    color: anaRenk,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: ekranGenisligi / 2,
                  height: ekranYuksekligi / 14,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: anaRenk,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    child: Text(
                      d.sepetYazi,
                      style: TextStyle(
                          color: yaziRenk1, fontSize: ekranYuksekligi / 35),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SelectedItems extends StatelessWidget {
  String title;
  SelectedItems({required this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
          backgroundColor: menuTitleColor.withOpacity(0.70),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          )),
      child: Text(
        title,
        style: TextStyle(color: yaziRenk1),
      ),
    );
  }
}
