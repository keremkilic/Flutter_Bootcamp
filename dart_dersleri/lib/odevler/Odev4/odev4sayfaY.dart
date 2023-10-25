import 'package:flutter/material.dart';

class Odev4SayfaY extends StatefulWidget {
  const Odev4SayfaY({Key? key}) : super(key: key);

  @override
  State<Odev4SayfaY> createState() => _Odev4SayfaYState();
}

class _Odev4SayfaYState extends State<Odev4SayfaY> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text("Sayfa Y"),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined)),
      ),
      body: Center(
        child: Text(
          "Bu sayfaların en sonuncusu geri tuşuna başarak AnaSayfa'ya dönebilirsiniz.",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
