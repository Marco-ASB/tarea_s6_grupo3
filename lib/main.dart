import 'package:flutter/material.dart';
import 'package:tarea_s6_grupo3/presentation/screen/home_screen.dart';

void main() {
  runApp(const SaludoUAE());
}

class SaludoUAE extends StatelessWidget{
  const SaludoUAE({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen());
  }
}
