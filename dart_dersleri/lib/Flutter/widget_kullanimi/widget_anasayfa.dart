import 'package:flutter/material.dart';

class WidgetAnaSayfa extends StatefulWidget {
  const WidgetAnaSayfa({Key? key}) : super(key: key);

  @override
  State<WidgetAnaSayfa> createState() => _WidgetAnaSayfaState();
}

class _WidgetAnaSayfaState extends State<WidgetAnaSayfa> {
  var tfController = TextEditingController();
  String alinanVeri = "";
  String resimAdi = "mutlu.png";

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Widgets Kullanımı"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi / 30),
              child: Text(alinanVeri),
            ),
            Padding(
              padding: EdgeInsets.all(ekranGenisligi / 40),
              child: TextField(
                controller: tfController,
                decoration: const InputDecoration(
                  hintText: "Veri",
                ),
                keyboardType: TextInputType.number,
                obscureText: true,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  alinanVeri = tfController.text;
                });
              },
              child: const Text("Veriyi Al"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      resimAdi = "mutlu.png";
                    });
                  },
                  child: const Text("Resim 1"),
                ),
                Image.asset("assets/images/$resimAdi"),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      resimAdi = "uzgun.png";
                    });
                  },
                  child: const Text("Resim 2"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
