import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  var flp = FlutterLocalNotificationsPlugin();

  Future<void> kurulum() async {
    var androidAyari =
        const AndroidInitializationSettings("@mipmap/ic_launcher");
    var iosAyari = const DarwinInitializationSettings();
    var kurulumAyari =
        InitializationSettings(android: androidAyari, iOS: iosAyari);
    await flp.initialize(kurulumAyari,
        onDidReceiveNotificationResponse: bildirimSecilme);
  }

  Future<void> bildirimSecilme(
      NotificationResponse notificationResponse) async {
    var payload = notificationResponse.payload;
    if (payload != null) {
      print("Bildirim seçildi : $payload");
    }
  }

  Future<void> bildirimGoster() async {
    var androidBildirimDetay = const AndroidNotificationDetails(
      "id",
      "name",
      channelDescription: "channelDescription",
      priority: Priority.high,
      importance: Importance.max,
    );

    var iosBildirimDetay = const DarwinNotificationDetails();
    var bildirimDetay = NotificationDetails(android: androidBildirimDetay, iOS: iosBildirimDetay);
    await flp.show(0, "Başlık", "İçerik", bildirimDetay, payload: "Payload İçerik");
  }

  @override
  void initState() {
    super.initState();
    kurulum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bildirim")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  bildirimGoster();
                },
                child: const Text("Bildirim Oluştur",
                    style: TextStyle(fontSize: 20)))
          ],
        ),
      ),
    );
  }
}
