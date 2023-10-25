import 'package:dart_dersleri/odevler/Odev4/odev4sayfaY.dart';
import 'package:flutter/material.dart';

class Odev4SayfaX extends StatefulWidget {
  const Odev4SayfaX({Key? key}) : super(key: key);

  @override
  State<Odev4SayfaX> createState() => _Odev4SayfaXState();
}

class _Odev4SayfaXState extends State<Odev4SayfaX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Sayfa X"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Odev4SayfaY(),
                ));
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
          child: const Text("SAYFA Y' ye GİT"),
        ),
      ),
    );
  }
}
