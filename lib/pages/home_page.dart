// **********************************************************************************************
// home_page.dart
// Pantalla de inicio con mensaje de bienvenida y botón rojo "Comenzar".
// **********************************************************************************************

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../theme/app_theme.dart';
import 'routines_page.dart';

class HomePage extends StatelessWidget {
  static const String route = '/';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Título en la barra superior (opcional)
        title: const Text('Rutina Online'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Spacer(),
            // Mensaje de bienvenida al usuario
            Text(
              'Bienvenido a tu rutina online',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: AppTheme.white,
                    fontSize: 28,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Text(
              'Elige tu grupo muscular y comienza a entrenar con seguridad y enfoque.',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            // Botón rojo "Comenzar"
            ElevatedButton(
              onPressed: () => Get.toNamed(RoutinesPage.route),
              child: const Text('Comenzar'),
            ),
          ],
        ),
      ),
    );
  }
}
