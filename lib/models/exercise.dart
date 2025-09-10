
enum ExerciseType { cardio, strength }

class Exercise {
  
  final String title;

  
  final String description;

 
  final ExerciseType type;

  
  final int? minutes;

  
  final String? setsReps;

  const Exercise({
    required this.title,
    required this.description,
    required this.type,
    this.minutes,
    this.setsReps,
  });
}
