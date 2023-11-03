import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:dart_dersleri/odevler/Odev7/data/const/constants.dart';
import 'package:dart_dersleri/odevler/Odev7/ui/cubit/odev7_anasayfa_cubit.dart';
import 'package:dart_dersleri/odevler/Odev7/ui/cubit/odev7_detay_cubit.dart';
import 'package:dart_dersleri/odevler/Odev7/ui/cubit/odev7_kayit_cubit.dart';
import 'package:dart_dersleri/odevler/Odev7/ui/views/odev7_anasayfa.dart';
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
        BlocProvider(create: (context) => Odev7AnaSayfaCubit(),),
        BlocProvider(create: (context) => Odev7KayitCubit(),),
        BlocProvider(create: (context) => Odev7DetayCubit(),)
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        /*
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          //useMaterial3: true,
        ),
         */
        home: AnimatedSplashScreen(
          backgroundColor: backgroundColor,
          splash: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("ToDo", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: cardColor),),
              const SizedBox(height: 10),
              Expanded(child: Image.asset("assets/images/todo.png")),
            ],
          ),
          nextScreen: const Odev7AnaSayfa(),
          splashTransition: SplashTransition.scaleTransition,
          animationDuration: const Duration(milliseconds: 1500),
          duration: 2500,
          splashIconSize: 250,
        ),
      ),
    );
  }
}
