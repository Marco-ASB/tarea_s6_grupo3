import 'package:flutter/material.dart'; // Importa los widgets de Material
import 'package:tarea_s6_grupo3/presentation/screen/about.dart';

// 1. Widget sin estado (Stateless), porque no guarda datos mutables
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key}); // Requisito: Agregar key (super.key)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E3A8A), // Color azul oscuro como en la captura
        foregroundColor: Colors.white, // Texto e íconos blancos
        title: const Text('Hola UAE',
          style: TextStyle(fontFamily: 'serif',
              fontWeight: FontWeight.bold,
              fontSize: 28),), // Título del AppBar
        actions: [ // Requisito: Botón de acción en el AppBar
          IconButton(
            icon: const Icon(Icons.info_outline), // Ícono de información
            onPressed: () {
              print('Botón de información presionado'); // Log en consola
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutScreen()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
          children: [
            const Text(
              'Hola UAE',
              style: TextStyle(
                fontFamily: 'serif',
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E3A8A), // Mismo azul de la captura
              ),
            ),
            const SizedBox(height: 10), // Separador
            const Text(
              'Scaffold · AppBar + body',
              style: TextStyle(
                fontFamily: 'serif',
                fontSize: 14,
                color: Colors.grey, // Texto gris
              ),
            ),
            const SizedBox(height: 30), // Separador grande

            // Botón "Saludar"
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF2E7D32), // Color verde de la captura
                foregroundColor: Colors.white, // Texto blanco
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15), // Botón más grande
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8), // Bordes redondeados
                ),
              ),
              onPressed: () {
               // Requisito: Mostrar un SnackBar usando ScaffoldMessenger
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text(
                      '¡Bienvenido a la UAE!',
                      style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'serif'),
                    ),
                    backgroundColor: const Color(0xFF1E3A8A), // Fondo azul oscuro
                    behavior: SnackBarBehavior.floating, // Hace que el SnackBar flote
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Bordes redondeados
                    ),
                  ),
                );
              },
              child: const Text(
                'Saludar',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
                    fontFamily: 'serif'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}