import 'package:flutter/material.dart'; // Importa los widgets necesarios

// Widget reutilizable tipo tarjeta
class TarjetaUAE extends StatelessWidget {
  const TarjetaUAE({super.key}); // Requisito: key y const

  @override
  Widget build(BuildContext context) {
    return Container( // Contenedor principal para dar el fondo y bordes
      width: 300,
      height: 300, // Ancho fijo para que parezca una tarjeta
      padding: const EdgeInsets.all(20), // Espacio interior
      decoration: BoxDecoration( // Decoración del contenedor
        color: const Color(0xFFE8F5E9), // Color de fondo verde muy claro (como la captura)
        border: Border.all(color: const Color(0xFF2E7D32), width: 2), // Borde verde grueso
        borderRadius: BorderRadius.circular(15), // Bordes redondeados

      ),
      child: Column( // Organiza el contenido verticalmente
        mainAxisSize: MainAxisSize.min, // Hace que la tarjeta solo ocupe el alto de su contenido
        children: [
          // El círculo verde con las letras UAE
          Container(
            padding: const EdgeInsets.all(24), // Espacio dentro del círculo
            decoration: const BoxDecoration( // Decoración del círculo
              color: Color(0xFF2E7D32), // Verde oscuro de fondo
              shape: BoxShape.circle, // Forma circular
            ),
            child: const Text( // Texto dentro del círculo
              'UAE',
              style: TextStyle(
                color: Colors.white, // Texto blanco
                fontWeight: FontWeight.bold, // Negrita
                fontSize: 22, // Tamaño
                fontFamily: 'serif', // Fuente de la letra
              ),
            ),
          ),
          const SizedBox(height: 15), // Separador
          const Text( // Título de la tarjeta
            'Tarjeta UAE',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2E7D32), // Verde oscuro
              fontFamily: 'serif', // Fuente de la letra
            ),
          ),
          const SizedBox(height: 8), // Separador
          const Text( // Subtítulo de la tarjeta
            'Universidad Agraria\ndel Ecuador', // El \n hace un salto de línea
            textAlign: TextAlign.center, // Centra el texto
            style: TextStyle(
              fontSize: 14,
              color: Colors.black87, // Gris oscuro
              fontFamily: 'serif', // Fuente de la letra
            ),
          ),
        ],
      ),
    );
  }
}