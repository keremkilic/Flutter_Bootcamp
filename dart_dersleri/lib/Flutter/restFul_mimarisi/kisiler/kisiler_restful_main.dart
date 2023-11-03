import 'package:dart_dersleri/Flutter/restFul_mimarisi/kisiler/ui/cubit/anasayfa_cubit.dart';
import 'package:dart_dersleri/Flutter/restFul_mimarisi/kisiler/ui/cubit/detay_sayfa_cubit.dart';
import 'package:dart_dersleri/Flutter/restFul_mimarisi/kisiler/ui/cubit/kayit_sayfa_cubit.dart';
import 'package:dart_dersleri/Flutter/restFul_mimarisi/kisiler/ui/views/anasayfa.dart';
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
        BlocProvider(create: (context) => KayitSayfaCubit(),),
        BlocProvider(create: (context) => DetaySayfaCubit(),),
        BlocProvider(create: (context) => AnaSayfaCubit(),),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          //useMaterial3: true,
        ),
        home: const AnaSayfa(),
      ),
    );
  }
}
