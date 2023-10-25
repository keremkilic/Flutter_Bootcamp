import 'package:dart_dersleri/odevler/Odev4/odev4sayfaY.dart';
import 'package:flutter/material.dart';

class Odev4SayfaB extends StatefulWidget {
  const Odev4SayfaB({Key? key}) : super(key: key);

  @override
  State<Odev4SayfaB> createState() => _Odev4SayfaBState();
}

class _Odev4SayfaBState extends State<Odev4SayfaB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: Text("Sayfa B"),
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
