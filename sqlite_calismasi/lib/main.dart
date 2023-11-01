import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqlite_calismasi/ui/cubit/anasayfa_cubit.dart';
import 'package:sqlite_calismasi/ui/cubit/detay_sayfa_cubit.dart';
import 'package:sqlite_calismasi/ui/cubit/kayit_sayfa_cubit.dart';
import 'package:sqlite_calismasi/ui/views/anasayfa.dart';

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
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const AnaSayfa(),
      )
    );
  }
}
