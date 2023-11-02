import 'package:dart_dersleri/odevler/Odev7/data/entity/odev7_toDos.dart';
import 'package:dart_dersleri/odevler/Odev7/ui/cubit/odev7_detay_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/const/constants.dart';

class Odev7Detay extends StatefulWidget {
  ToDo todo;
  Odev7Detay({required this.todo});

  @override
  State<Odev7Detay> createState() => _Odev7DetayState();
}

class _Odev7DetayState extends State<Odev7Detay> {
  TextEditingController tfTodoName = TextEditingController();
  TextEditingController tfTodoDesc = TextEditingController();

  @override
  void initState() {
    super.initState();
    var todo = widget.todo;
    tfTodoName.text = widget.todo.name;
    tfTodoDesc.text = widget.todo.description;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: appBarBackColor,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white70)),
        title: const Text(
          "Güncelleme Ekranı",
          style: TextStyle(color: Colors.white70),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 50.0, bottom: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: tfTodoName,
                decoration: InputDecoration(
                    fillColor: buttonColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: buttonColor,
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: buttonColor,
                        width: 2.0,
                      ),
                    ),
                    labelText: "Konu Basligi",
                    labelStyle: const TextStyle(color: Colors.black26)),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: tfTodoDesc,
                decoration: InputDecoration(
                    fillColor: buttonColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: buttonColor,
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: buttonColor,
                        width: 2.0,
                      ),
                    ),
                    labelText: "Konu Icerigi",
                    labelStyle: const TextStyle(color: Colors.black26)),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  context.read<Odev7DetayCubit>().guncelle(
                      widget.todo.id, tfTodoName.text, tfTodoDesc.text);
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  backgroundColor: buttonColor,
                ),
                child: const Text(
                  "Güncelle",
                  style: TextStyle(color: Colors.white70),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
