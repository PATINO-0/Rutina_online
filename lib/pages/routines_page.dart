
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/routine_controller.dart';
import '../models/routine.dart';
import 'routine_detail_page.dart';
import '../../theme/app_theme.dart';

class RoutinesPage extends GetView<RoutineController> {
  static const String route = '/routines';
  const RoutinesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Selecciona tu rutina'),
        centerTitle: true,
        leading: IconButton(
          tooltip: 'Volver',
          icon: const Icon(Icons.arrow_back, color: AppTheme.white),
          onPressed: () => Get.back(),
        ),
      ),
      body: Obx(
        
        () => ListView.builder(
          padding: const EdgeInsets.only(bottom: 24),
          itemCount: controller.routines.length,
          itemBuilder: (context, index) {
            final Routine routine = controller.routines[index];
            return Card(
              child: InkWell(
                borderRadius: BorderRadius.circular(16),
                onTap: () {
                  controller.selectRoutine(routine);
                  Get.toNamed(RoutineDetailPage.route, arguments: routine);
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      Container(
                        width: 6,
                        height: 64,
                        decoration: BoxDecoration(
                          color: AppTheme.red,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      const SizedBox(width: 12),
                      // Contenido de la tarjeta
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(routine.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(fontSize: 18)),
                            const SizedBox(height: 6),
                            Text(
                              routine.description,
                              style: const TextStyle(
                                color: Colors.black87,
                                height: 1.3,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Wrap(
                              spacing: 8,
                              runSpacing: -8,
                              children: const [
                                Chip(label: Text('Cardio 2 x 15 min')),
                                Chip(label: Text('Fuerza 6 ejercicios')),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Icon(Icons.chevron_right, color: Colors.black54),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
