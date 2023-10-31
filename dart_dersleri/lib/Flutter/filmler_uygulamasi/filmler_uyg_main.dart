import 'package:dart_dersleri/Flutter/filmler_uygulamasi/ui/cubit/filmler_anasayfa_cubit.dart';
import 'package:dart_dersleri/Flutter/filmler_uygulamasi/ui/views/filmler_uyg_anaSayfa.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => FilmlerAnaSayfaCubit()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const FilmlerUygAnaSayfa(),
      ),
    );
  }
}
