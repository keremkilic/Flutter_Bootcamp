import 'package:flutter/material.dart';

class Odev5 extends StatefulWidget {
  const Odev5({Key? key}) : super(key: key);

  @override
  State<Odev5> createState() => _Odev5State();
}

class _Odev5State extends State<Odev5> {
  late int sayi1;
  late int sayi2;
  String gosterilecekSayi = "";
  String islemGecmis = "";
  late String sonuc;
  late String islemTutucu;

  void buttonIslem(String butonDegerTutma) {
    if (butonDegerTutma == "AC") {
      gosterilecekSayi = "";
      sonuc = "";
      sayi1 = 0;
      sayi2 = 0;
      islemGecmis = "";
      islemTutucu = "";
    } else if (butonDegerTutma == "C") {
      gosterilecekSayi = "";
      sonuc = "";
      sayi1 = 0;
      sayi2 = 0;
    } else if (butonDegerTutma == "+") {
      sayi1 = int.parse(gosterilecekSayi);
      sonuc = "";
      islemTutucu = butonDegerTutma;
    } else if (butonDegerTutma == "-") {
      sayi1 = int.parse(gosterilecekSayi);
      sonuc = "";
      islemTutucu = butonDegerTutma;
    } else if (butonDegerTutma == "X") {
      sayi1 = int.parse(gosterilecekSayi);
      sonuc = "";
      islemTutucu = butonDegerTutma;
    } else if (butonDegerTutma == "/") {
      sayi1 = int.parse(gosterilecekSayi);
      sonuc = "";
      islemTutucu = butonDegerTutma;
    } else if (butonDegerTutma == "=") {
      sayi2 = int.parse(gosterilecekSayi);
      if (islemTutucu == "+") {
        sonuc = (sayi1 + sayi2).toString();
        islemGecmis =
            sayi1.toString() + islemTutucu.toString() + sayi2.toString();
      } else if (islemTutucu == "-") {
        sonuc = (sayi1 - sayi2).toString();
        islemGecmis =
            sayi1.toString() + islemTutucu.toString() + sayi2.toString();
      } else if (islemTutucu == "X") {
        sonuc = (sayi1 * sayi2).toString();
        islemGecmis =
            sayi1.toString() + islemTutucu.toString() + sayi2.toString();
      } else if (islemTutucu == "/") {
        sonuc = (sayi1 / sayi2).toString();
        islemGecmis =
            sayi1.toString() + islemTutucu.toString() + sayi2.toString();
      }
    } else {
      sonuc = int.parse(gosterilecekSayi + butonDegerTutma).toString();
    }
    setState(() {
      gosterilecekSayi = sonuc;
    });
  }

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    double ekranGenisligi = ekranBilgisi.size.width;
    double ekranYuksekligi = ekranBilgisi.size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: Container(
                alignment: const Alignment(1.0, -1.0),
                height: 245,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 5, 8),
                      child: Text(islemGecmis,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white.withOpacity(0.5))),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 5, 8),
                      child: Text(gosterilecekSayi,
                          style: const TextStyle(
                              fontSize: 76, color: Colors.white)),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberButton(
                    height: ekranYuksekligi / 9,
                    width:  ekranGenisligi / 4.5,
                    icerik: "AC",
                    textColors: Colors.black,
                    buttonColors: Colors.grey,
                    fontsize: 34,
                    tiklama: buttonIslem),
                NumberButton(
                    height: ekranYuksekligi / 9,
                    width:  ekranGenisligi / 4.5,
                    icerik: "C",
                    textColors: Colors.black,
                    buttonColors: Colors.grey,
                    fontsize: 34,
                    tiklama: buttonIslem),
                NumberButton(
                    height: ekranYuksekligi / 9,
                    width:  ekranGenisligi / 4.5,
                    icerik: "%",
                    textColors: Colors.black,
                    buttonColors: Colors.grey,
                    fontsize: 38,
                    tiklama: buttonIslem),
                NumberButton(
                    height: ekranYuksekligi / 9,
                    width:  ekranGenisligi / 4.5,
                    icerik: "/",
                    textColors: Colors.white,
                    buttonColors: Colors.orange,
                    fontsize: 38,
                    tiklama: buttonIslem),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberButton(
                    height: ekranYuksekligi / 9,
                    width:  ekranGenisligi / 4.5,
                    icerik: "7",
                    textColors: Colors.white,
                    buttonColors: Colors.grey.shade800,
                    fontsize: 38,
                    tiklama: buttonIslem),
                NumberButton(
                    height: ekranYuksekligi / 9,
                    width:  ekranGenisligi / 4.5,
                    icerik: "8",
                    textColors: Colors.white,
                    buttonColors: Colors.grey.shade800,
                    fontsize: 38,
                    tiklama: buttonIslem),
                NumberButton(
                    height: ekranYuksekligi / 9,
                    width:  ekranGenisligi / 4.5,
                    icerik: "9",
                    textColors: Colors.white,
                    buttonColors: Colors.grey.shade800,
                    fontsize: 38,
                    tiklama: buttonIslem),
                NumberButton(
                    height: ekranYuksekligi / 9,
                    width:  ekranGenisligi / 4.5,
                    icerik: "X",
                    textColors: Colors.white,
                    buttonColors: Colors.orange,
                    fontsize: 38,
                    tiklama: buttonIslem),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberButton(
                    height: ekranYuksekligi / 9,
                    width:  ekranGenisligi / 4.5,
                    icerik: "4",
                    textColors: Colors.white,
                    buttonColors: Colors.grey.shade800,
                    fontsize: 38,
                    tiklama: buttonIslem),
                NumberButton(
                    height: ekranYuksekligi / 9,
                    width:  ekranGenisligi / 4.5,
                    icerik: "5",
                    textColors: Colors.white,
                    buttonColors: Colors.grey.shade800,
                    fontsize: 38,
                    tiklama: buttonIslem),
                NumberButton(
                    height: ekranYuksekligi / 9,
                    width:  ekranGenisligi / 4.5,
                    icerik: "6",
                    textColors: Colors.white,
                    buttonColors: Colors.grey.shade800,
                    fontsize: 38,
                    tiklama: buttonIslem),
                NumberButton(
                    height: ekranYuksekligi / 9,
                    width:  ekranGenisligi / 4.5,
                    icerik: "-",
                    textColors: Colors.white,
                    buttonColors: Colors.orange,
                    fontsize: 38,
                    tiklama: buttonIslem),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                NumberButton(
                    height: ekranYuksekligi / 9,
                    width:  ekranGenisligi / 4.5,
                    icerik: "1",
                    textColors: Colors.white,
                    buttonColors: Colors.grey.shade800,
                    fontsize: 38,
                    tiklama: buttonIslem),
                NumberButton(
                    height: ekranYuksekligi / 9,
                    width:  ekranGenisligi / 4.5,
                    icerik: "2",
                    textColors: Colors.white,
                    buttonColors: Colors.grey.shade800,
                    fontsize: 38,
                    tiklama: buttonIslem),
                NumberButton(
                    height: ekranYuksekligi / 9,
                    width:  ekranGenisligi / 4.5,
                    icerik: "3",
                    textColors: Colors.white,
                    buttonColors: Colors.grey.shade800,
                    fontsize: 38,
                    tiklama: buttonIslem),
                NumberButton(
                    height: ekranYuksekligi / 9,
                    width:  ekranGenisligi / 4.5,
                    icerik: "+",
                    textColors: Colors.white,
                    buttonColors: Colors.orange,
                    fontsize: 38,
                    tiklama: buttonIslem),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: 200,
                    child: NumberButton(
                        height: ekranYuksekligi / 9,
                        width:  ekranGenisligi / 3,
                        icerik: "0",
                        textColors: Colors.white,
                        buttonColors: Colors.grey.shade800,
                        fontsize: 38,
                        tiklama: buttonIslem)),
                NumberButton(
                    height: ekranYuksekligi / 9,
                    width:  ekranGenisligi / 4.5,
                    icerik: ".",
                    textColors: Colors.white,
                    buttonColors: Colors.grey.shade800,
                    fontsize: 38,
                    tiklama: buttonIslem),
                NumberButton(
                    height: ekranYuksekligi / 9,
                    width:  ekranGenisligi / 4.5,
                    icerik: "=",
                    textColors: Colors.white,
                    buttonColors: Colors.orange,
                    fontsize: 38,
                    tiklama: buttonIslem),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NumberButton extends StatelessWidget {
  String icerik;
  Color textColors;
  Color buttonColors;
  double fontsize;
  final Function? tiklama;
  double height;
  double width;

  NumberButton({
    required this.icerik,
    required this.textColors,
    required this.buttonColors,
    required this.fontsize,
    required this.tiklama,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: GestureDetector(
        onTap: () {
          tiklama!(icerik);
        },
        child: Container(
          decoration: BoxDecoration(
              color: buttonColors,
              borderRadius: const BorderRadius.all(Radius.circular(25))),
          child: Center(
              child: Text(
            icerik,
            style: TextStyle(
                color: textColors,
                fontSize: fontsize,
                fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}
