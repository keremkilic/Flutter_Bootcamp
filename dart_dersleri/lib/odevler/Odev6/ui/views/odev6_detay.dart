import 'package:dart_dersleri/odevler/Odev6/data/entity/odev6_filmler.dart';
import 'package:flutter/material.dart';

class Odev6Detay extends StatefulWidget {
  Odev6Filmler filmler;
  Odev6Detay({required this.filmler});

  @override
  State<Odev6Detay> createState() => _Odev6DetayState();
}

class _Odev6DetayState extends State<Odev6Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("resimler/${widget.filmler.film_resim_adi}"),
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              height: 300,
              width: 500,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.8),
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    )),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          widget.filmler.film_adi,
                          style: const TextStyle(
                              fontSize: 34,
                              color: Colors.red,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Süre : ${widget.filmler.film_sure} ",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey.shade50,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.end,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5.0, bottom: 10.0),
                          child: Divider(color: Colors.grey, thickness: 2),
                        ),
                        Text(
                          widget.filmler.text,
                          style: const TextStyle(
                              fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
            //Text(widget.filmler.film_adi,style: TextStyle(fontSize: 34, color: Colors.white),),
            //Text(widget.filmler.film_sure,style: TextStyle(fontSize: 24, color: Colors.white),),
          ],
        )),
      ),
    );
  }
}
