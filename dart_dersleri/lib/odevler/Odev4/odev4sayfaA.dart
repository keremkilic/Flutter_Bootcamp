import 'package:dart_dersleri/odevler/Odev4/odev4sayfaB.dart';
import 'package:flutter/material.dart';

class Odev4SayfaA extends StatefulWidget {
  const Odev4SayfaA({Key? key}) : super(key: key);

  @override
  State<Odev4SayfaA> createState() => _Odev4SayfaAState();
}

class _Odev4SayfaAState extends State<Odev4SayfaA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        title: Text("Sayfa A"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Odev4SayfaB(),
                ));
          },
          style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
          child: const Text("SAYFA B' ya GİT"),
        ),
      ),
    );
  }
}
