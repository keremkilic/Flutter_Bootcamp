import 'package:dart_dersleri/odevler/Odev7/data/entity/odev7_toDos.dart';
import 'package:dart_dersleri/odevler/Odev7/ui/cubit/odev7_anasayfa_cubit.dart';
import 'package:dart_dersleri/odevler/Odev7/ui/views/odev7_detay.dart';
import 'package:dart_dersleri/odevler/Odev7/ui/views/odev7_kayit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/const/constants.dart';

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
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: appBarBackColor,
        title: aramaYapiliyorMu
            ? TextField(
                decoration: const InputDecoration(hintText: "Ara"),
                onChanged: (aramaSonucu) {
                  context.read<Odev7AnaSayfaCubit>(). ara(aramaSonucu);
                },
              )
            : const Text("ToDo App", style: TextStyle(color: Colors.white70),),
        actions: [
          aramaYapiliyorMu
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      aramaYapiliyorMu = false;
                    });
                    context.read<Odev7AnaSayfaCubit>().toDoliste();
                  },
                  icon: const Icon(Icons.clear, color: Colors.white70,))
              : IconButton(
                  onPressed: () {
                    setState(() {
                      aramaYapiliyorMu = true;
                    });
                  },
                  icon: const Icon(Icons.search_outlined, color: Colors.white70,))
        ],
      ),
      body: BlocBuilder<Odev7AnaSayfaCubit, List<ToDo>>(
        builder: (context, todoListesi) {
          if (todoListesi.isNotEmpty) {
            return ListView.builder(
              itemCount: todoListesi.length,
              itemBuilder: (context, index) {
                var todos = todoListesi[index];
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
                      child: GestureDetector(
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
                          color: cardColor,
                          child: SizedBox(
                            height: 150,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        todos.name,
                                        style: const TextStyle(
                                            fontSize: 20, color: textColor),
                                      ),
                                      const SizedBox(height: 10),
                                      Text(
                                        todos.description,
                                        style: const TextStyle(color: textColor),
                                      ),
                                    ],
                                  ),
                                ),
                                const Spacer(),
                                Container(height: 150, width: 1, color: textColor),
                                IconButton(
                                  icon: const Icon(Icons.clear, color: textColor,),
                                  onPressed: () {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      backgroundColor: cardColor,
                                      content: Text("${todos.name} silinsin mi ?", style: const TextStyle(color: textColor),),
                                      action: SnackBarAction(
                                        label: "EVET",
                                        textColor: textColor,
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
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(height: 2, color: Colors.grey.shade400),
                    ),
                  ],
                );
              },
            );
          } else {
            return const Center();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: fabColor,
        child: const Icon(Icons.add, size: 30, color: textColor,),
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
