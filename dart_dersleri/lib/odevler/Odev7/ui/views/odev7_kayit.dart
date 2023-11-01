import 'package:dart_dersleri/odevler/Odev7/ui/cubit/odev7_kayit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Odev7Kayit extends StatefulWidget {
  const Odev7Kayit({Key? key}) : super(key: key);

  @override
  State<Odev7Kayit> createState() => _Odev7KayitState();
}

class _Odev7KayitState extends State<Odev7Kayit> {
  TextEditingController tfTodoName = TextEditingController();
  TextEditingController tfTodoDesc = TextEditingController();

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
                  context.read<Odev7KayitCubit>().kaydet(tfTodoName.text, tfTodoDesc.text);
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
