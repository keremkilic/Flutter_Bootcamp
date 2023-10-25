import 'package:flutter/material.dart';

class KullaniciEtkilesimiSayfa extends StatefulWidget {
  const KullaniciEtkilesimiSayfa({Key? key}) : super(key: key);

  @override
  State<KullaniciEtkilesimiSayfa> createState() =>
      _KullaniciEtkilesimiSayfaState();
}

class _KullaniciEtkilesimiSayfaState extends State<KullaniciEtkilesimiSayfa> {
  var tfControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kullanıcı Etkileşimi"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // SnackBar
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: const Text("Silmek istiyor musunuz?"),
                    action: SnackBarAction(
                        label: "Evet",
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: const Text("Silindi")),
                          );
                        })));
              },
              child: const Text("SnackBar"),
            ),
            // SnackBar (Özel)
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: const Text(
                      "Silmek istiyor musunuz?",
                      style: TextStyle(color: Colors.indigoAccent),
                    ),
                    backgroundColor: Colors.grey,
                    action: SnackBarAction(
                        label: "Evet",
                        textColor: Colors.red,
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: const Text(
                                "Silindi",
                                style: TextStyle(color: Colors.red),
                              ),
                              backgroundColor: Colors.grey,
                            ),
                          );
                        })));
              },
              child: const Text("SnackBar (Özel)"),
            ),
            // Alert
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("Baslık"),
                      content: const Text("Icerik"),
                      actions: [
                        TextButton(
                            onPressed: () {
                              print("İptal seçildi");
                              Navigator.pop(context);
                            },
                            child: Text("İptal")),
                        TextButton(
                            onPressed: () {
                              print("Tamam seçildi");
                              Navigator.pop(context);
                            },
                            child: Text("Tamam")),
                      ],
                    );
                  },
                );
              },
              child: const Text("Alert"),
            ),
            // Alert (Özel)
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("Kayıt İşlemi"),
                      content: TextField(
                        controller: tfControl,
                        decoration: InputDecoration(
                          hintText: "Veri",
                        ),
                      ),
                      backgroundColor: Colors.grey,
                      actions: [
                        TextButton(
                            onPressed: () {
                              print("İptal seçildi");
                              Navigator.pop(context);
                              tfControl.text = "";
                            },
                            child: Text("İptal", style: TextStyle(color: Colors.black),)),
                        TextButton(
                            onPressed: () {
                              print("Alınan veri : ${tfControl.text}");
                              Navigator.pop(context);
                              tfControl.text = "";
                            },
                            child: Text("Kaydet", style: TextStyle(color: Colors.black))),
                      ],
                    );
                  },
                );
              },
              child: const Text("Alert (Özel)"),
            ),
          ],
        ),
      ),
    );
  }
}
