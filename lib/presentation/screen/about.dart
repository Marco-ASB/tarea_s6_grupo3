import 'package:flutter/material.dart';
import 'package:tarea_s6_grupo3/presentation/widget/tarjeta_uae.dart';


class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E3A8A), // Azul oscuro (igual que el taller 6)
        foregroundColor: Colors.white, // Texto e íconos blancos
        title: const Text('Acerca De',
          style: TextStyle(fontFamily: 'serif', fontWeight: FontWeight.bold, fontSize: 28)
        ), // Título de la pantalla
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TarjetaUAE(),
            const SizedBox(height: 30),
            const Text('presentation/widget - reutilizable',
            style: TextStyle(
              fontFamily: 'serif',
              fontSize: 14,
              color: Colors.blueGrey, // Texto gris
            )
            )
          ]
        )
      ),
    );
  }
}
