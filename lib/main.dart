import 'package:flutter/material.dart';
import 'package:zeta_ai/screen/home/home_screen.dart';
import 'package:zeta_ai/screen/splash/splash_screen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Zeta AI Labs",
      home: const HomeScreen(),
    );
  }
}