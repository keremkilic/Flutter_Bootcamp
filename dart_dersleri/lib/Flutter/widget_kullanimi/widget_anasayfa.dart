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
  bool switchKontrol = false;
  bool checkboxKontrol = false;
  int radioDeger = 0;
  bool progressKontrol = false;
  double ilerleme = 30.0;
  var tfSaat = TextEditingController();
  var tfTarih = TextEditingController();
  var ulkelerListesi = <String>[];
  String secilenUlke = "Türkiye";

  @override
  void initState() {
    super.initState();
    ulkelerListesi.add("Türkiye");
    ulkelerListesi.add("Italya");
    ulkelerListesi.add("Japonya");
  }

  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Widgets Kullanımı"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              // TextField alanına girilen değeri gösterme
              Padding(
                padding: EdgeInsets.all(ekranYuksekligi / 30),
                child: Text(alinanVeri),
              ),
              // TextField alanına girilen degeri tutma
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
              // TextField alanına girilen değeri text aktarma
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    alinanVeri = tfController.text;
                  });
                },
                child: const Text("Veriyi Al"),
              ),
              // Butonlara tanımlanan resimleri ekranda gösterme
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
              // Switch ve ChechBox kullanımı
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 200,
                    child: SwitchListTile(
                      title: const Text("Dart"),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: switchKontrol,
                      onChanged: (value) {
                        setState(() {
                          switchKontrol = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: CheckboxListTile(
                      title: const Text("Flutter"),
                      controlAffinity: ListTileControlAffinity.leading,
                      value: checkboxKontrol,
                      onChanged: (value) {
                        setState(() {
                          checkboxKontrol = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              // Switch ve ChechBox seçimine göre durumlarını gösterme -- true(seçili), false(seçili değil)
              ElevatedButton(
                onPressed: () {
                  print("Switch durum : $switchKontrol");
                  print("Check durum : $checkboxKontrol");
                },
                child: const Text("Göster"),
              ),
              // RadioButton kullanımı
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 200,
                    child: RadioListTile(
                      title: const Text("Barcelona"),
                      value: 1,
                      groupValue: radioDeger,
                      onChanged: (value) {
                        setState(() {
                          radioDeger = value!;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: RadioListTile(
                      title: const Text("Real Madrid"),
                      value: 2,
                      groupValue: radioDeger,
                      onChanged: (value) {
                        setState(() {
                          radioDeger = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              // RadioButton seçimine göre durumunu gösterme -- true(seçili), false(seçili değil)
              ElevatedButton(
                onPressed: () {
                  print("Switch durum : $switchKontrol");
                  print("Check durum : $checkboxKontrol");
                  print("Radio durum : $radioDeger");
                },
                child: const Text("Göster"),
              ),
              // ProgressBar kullanımı butonlara basarak başla - bitir işlemi yapacak
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        progressKontrol = true;
                      });
                    },
                    child: const Text("Başla"),
                  ),
                  Visibility(
                      visible: progressKontrol,
                      child: const CircularProgressIndicator()),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        progressKontrol = false;
                      });
                    },
                    child: const Text("Dur"),
                  )
                ],
              ),
              // Slider
              Text(ilerleme.toInt().toString()),
              Slider(
                max: 100.0,
                min: 0.0,
                value: ilerleme,
                onChanged: (value) {
                  setState(() {
                    ilerleme = value;
                  });
                },
              ),
              // Saat ve Tarih alma işlemi
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 120,
                    child: TextField(
                      controller: tfSaat,
                      decoration: InputDecoration(hintText: "Saat"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        showTimePicker(
                                context: context,
                                initialTime:
                                    TimeOfDay.fromDateTime(DateTime.now()))
                            .then((value) {
                          tfSaat.text = "${value!.hour}:${value.minute} ";
                        });
                      },
                      icon: Icon(Icons.access_time)),
                  SizedBox(
                    width: 120,
                    child: TextField(
                      controller: tfTarih,
                      decoration: InputDecoration(hintText: "Tarih"),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2030),
                        ).then((value) {
                          tfTarih.text =
                              "${value!.day}/${value.month}/${value.year}";
                        });
                      },
                      icon: Icon(Icons.date_range_outlined)),
                ],
              ),
              // Seçilen tarih ve saati gösterme
              ElevatedButton(
                onPressed: () {
                  print("Tarih durum : ${tfTarih.text}");
                  print("Saat durum : ${tfSaat.text}");
                },
                child: const Text("Göster"),
              ),
              //DropDownmenu ve DropDownItem
              DropdownButton(
                value: secilenUlke,
                icon: const Icon(Icons.arrow_drop_down),
                items: ulkelerListesi.map((ulke) {
                  return DropdownMenuItem(value: ulke, child: Text(ulke));
                }).toList(),
                onChanged: (veri) {
                  setState(() {
                    secilenUlke = veri!;
                  });
                },
              ),
              GestureDetector(
                  onTap: () {
                    print("Container tek tıklandı");
                  },
                  onDoubleTap: () {
                    print("Container çift tıklandı");
                  },
                  onLongPress: () {
                    print("Container uzerine uzun basıldı");
                  },
                  child: Container(width: 200, height: 200, color: Colors.red,)),
              ElevatedButton(
                onPressed: () {
                  print("Ulke durum : $secilenUlke");
                },
                child: const Text("Göster"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
