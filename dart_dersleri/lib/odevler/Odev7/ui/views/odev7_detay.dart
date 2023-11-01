import 'package:dart_dersleri/odevler/Odev7/data/entity/odev7_toDos.dart';
import 'package:dart_dersleri/odevler/Odev7/ui/cubit/odev7_detay_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      appBar: AppBar(
        title: const Text("ToDo Kayıt Ekranı"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50.0 ,right: 50.0, bottom: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: tfTodoName,
                decoration: InputDecoration(hintText: "Konu Basligi"),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: tfTodoDesc,
                decoration: InputDecoration(hintText: "Konu Icerigi"),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  context.read<Odev7DetayCubit>().guncelle(widget.todo.id, tfTodoName.text, tfTodoDesc.text);
                },
                child: const Text("Kaydet"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
