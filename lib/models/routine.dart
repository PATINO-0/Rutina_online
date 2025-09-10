// **********************************************************************************************
// routine.dart
// Modelo de rutina que agrupa ejercicios y una descripción de la zona trabajada.
// **********************************************************************************************

import 'exercise.dart';

class Routine {
  // Nombre visible de la rutina (en español)
  final String name;

  // Descripción breve de qué áreas se entrenan y para qué sirven
  final String description;

  // Lista de ejercicios (mezcla de cardio y fuerza)
  final List<Exercise> exercises;

  const Routine({
    required this.name,
    required this.description,
    required this.exercises,
  });
}
