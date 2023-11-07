import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {

  double enlem = 0.0;
  double boylam = 0.0;

  Future<void> konumBilgisiAl() async {
    var konum = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    setState(() {
      enlem = konum.latitude;
      boylam = konum.longitude;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AnaSayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Enlem  : $enlem ", style: TextStyle(fontSize: 30),),
            Text("Boylam : $boylam", style: TextStyle(fontSize: 30),),
            ElevatedButton(onPressed: () {
              konumBilgisiAl();
            }, child: const Text("Konum Al"))
          ],
        ),
      ),
    );
  }
}
