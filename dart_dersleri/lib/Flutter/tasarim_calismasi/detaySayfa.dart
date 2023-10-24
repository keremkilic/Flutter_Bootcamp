import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DetaySayfa extends StatefulWidget {
  const DetaySayfa({Key? key}) : super(key: key);

  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {

    var d = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(d!.ekranKategori),
      ),
    );
  }
}
