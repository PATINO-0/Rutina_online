

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/routine_controller.dart';
import '../models/exercise.dart';
import '../models/routine.dart';
import '../../theme/app_theme.dart';
import '../../widgets/exercise_tile.dart';

class RoutineDetailPage extends GetView<RoutineController> {
  static const String route = '/routine-detail';
  const RoutineDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    final Routine routine =
        (Get.arguments is Routine ? Get.arguments : controller.selectedRoutine.value) as Routine;

    
    final List<Exercise> cardio =
        routine.exercises.where((e) => e.type == ExerciseType.cardio).toList();
    final List<Exercise> strength =
        routine.exercises.where((e) => e.type == ExerciseType.strength).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(routine.name),
        centerTitle: true,
        leading: IconButton(
          tooltip: 'Volver',
          icon: const Icon(Icons.arrow_back, color: AppTheme.white),
          onPressed: () => Get.back(),
        ),
      ),
      body: Column(
        children: [
          
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 10),
            color: AppTheme.black,
            child: Text(
              routine.description,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ),

          
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
              children: [
                _SectionHeader(title: 'Cardio (2 x 15 min)'),
                ...cardio.map((e) => ExerciseTile(exercise: e)),
                const SizedBox(height: 16),
                _SectionHeader(title: 'Fuerza (6 ejercicios)'),
                ...strength.map((e) => ExerciseTile(exercise: e)),
                const SizedBox(height: 80), 
              ],
            ),
          ),
        ],
      ),

      
      bottomSheet: Container(
        color: AppTheme.black,
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
        child: ElevatedButton(
          onPressed: () {
            controller.clearSelection();
            Get.defaultDialog(
              title: '¡Rutina finalizada!',
              middleText:
                  'Buen trabajo. Hidrátate y realiza estiramientos para una mejor recuperación.',
              textConfirm: 'Volver a rutinas',
              confirmTextColor: Colors.white,
              buttonColor: AppTheme.red,
              onConfirm: () {
                Get.back(); 
                Get.back(); 
              },
            );
          },
          child: const Text('Finalizar rutina'),
        ),
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        
        Container(
          width: 6,
          height: 24,
          decoration: BoxDecoration(
            color: AppTheme.red,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
