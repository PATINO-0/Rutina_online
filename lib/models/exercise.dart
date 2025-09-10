// **********************************************************************************************
// exercise.dart
// Modelo de ejercicio para mostrar nombre, tipo (cardio/fuerza), duración o repeticiones.
// **********************************************************************************************

enum ExerciseType { cardio, strength }

class Exercise {
  // Nombre del ejercicio (texto para el usuario en español)
  final String title;

  // Descripción breve del ejercicio (para qué sirve / técnica / zona)
  final String description;

  // Tipo de ejercicio (cardio o fuerza)
  final ExerciseType type;

  // Duración en minutos (para cardio) - opcional
  final int? minutes;

  // Series y repeticiones (para fuerza) - opcional
  final String? setsReps;

  const Exercise({
    required this.title,
    required this.description,
    required this.type,
    this.minutes,
    this.setsReps,
  });
}
