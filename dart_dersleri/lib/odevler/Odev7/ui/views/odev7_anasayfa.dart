import 'package:dart_dersleri/odevler/Odev7/data/entity/odev7_toDos.dart';
import 'package:dart_dersleri/odevler/Odev7/ui/cubit/odev7_anasayfa_cubit.dart';
import 'package:dart_dersleri/odevler/Odev7/ui/views/odev7_detay.dart';
import 'package:dart_dersleri/odevler/Odev7/ui/views/odev7_kayit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Odev7AnaSayfa extends StatefulWidget {
  const Odev7AnaSayfa({Key? key}) : super(key: key);

  @override
  State<Odev7AnaSayfa> createState() => _Odev7AnaSayfaState();
}

class _Odev7AnaSayfaState extends State<Odev7AnaSayfa> {
  bool aramaYapiliyorMu = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<Odev7AnaSayfaCubit>().toDoliste();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: aramaYapiliyorMu
            ? TextField(
                decoration: const InputDecoration(hintText: "Ara"),
                onChanged: (aramaSonucu) {
                  context.read<Odev7AnaSayfaCubit>(). ara(aramaSonucu);
                },
              )
            : const Text("ToDo App"),
        actions: [
          aramaYapiliyorMu
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      aramaYapiliyorMu = false;
                    });
                    context.read<Odev7AnaSayfaCubit>().toDoliste();
                  },
                  icon: const Icon(Icons.clear))
              : IconButton(
                  onPressed: () {
                    setState(() {
                      aramaYapiliyorMu = true;
                    });
                  },
                  icon: const Icon(Icons.search_outlined))
        ],
      ),
      body: BlocBuilder<Odev7AnaSayfaCubit, List<ToDo>>(
        builder: (context, todoListesi) {
          if (todoListesi.isNotEmpty) {
            return ListView.builder(
              itemCount: todoListesi.length,
              itemBuilder: (context, index) {
                var todos = todoListesi[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Odev7Detay(todo: todos),
                        )).then((value) {
                      context.read<Odev7AnaSayfaCubit>().toDoliste();
                    });
                  },
                  child: Card(
                    color: Colors.blueGrey,
                    child: SizedBox(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  todos.name,
                                  style: const TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                Text(
                                  todos.description,
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            icon: Icon(Icons.clear),
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text("${todos.name} silinsin mi ?"),
                                action: SnackBarAction(
                                  label: "EVET",
                                  onPressed: () {
                                    context.read<Odev7AnaSayfaCubit>().sil(todos.id);
                                  },
                                ),
                              ));
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Odev7Kayit(),
              )).then((value) {
            context.read<Odev7AnaSayfaCubit>().toDoliste();
          });
          },
      ),
    );
  }
}
