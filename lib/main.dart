

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/routine_controller.dart';
import 'pages/home_page.dart';
import 'pages/routine_detail_page.dart';
import 'pages/routines_page.dart';
import 'theme/app_theme.dart';

void main() {
  
  Get.put(RoutineController(), permanent: true);

  runApp(const GymApp());
}

class GymApp extends StatelessWidget {
  const GymApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // **Todo lo visual para el usuario está en español**
      title: 'Rutina Online',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,       // Tema claro (negro/blanco/rojo)
      darkTheme: AppTheme.dark,    // Tema oscuro opcional
      themeMode: ThemeMode.light,
      initialRoute: HomePage.route,
      getPages: [
        GetPage(name: HomePage.route, page: () => const HomePage()),
        GetPage(name: RoutinesPage.route, page: () => const RoutinesPage()),
        GetPage(name: RoutineDetailPage.route, page: () => const RoutineDetailPage()),
      ],
    );
  }
}
