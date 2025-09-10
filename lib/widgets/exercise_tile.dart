
import 'package:flutter/material.dart';
import '../models/exercise.dart';
import '../theme/app_theme.dart';

class ExerciseTile extends StatefulWidget {
  final Exercise exercise;
  const ExerciseTile({super.key, required this.exercise});

  @override
  State<ExerciseTile> createState() => _ExerciseTileState();
}

class _ExerciseTileState extends State<ExerciseTile> {
  
  bool done = false;

  @override
  Widget build(BuildContext context) {
    final isCardio = widget.exercise.type == ExerciseType.cardio;

    return Card(
      child: ListTile(
        
        title: Text(
          widget.exercise.title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Text(
            isCardio
                ? '${widget.exercise.description}\nDuración: ${widget.exercise.minutes} min'
                : '${widget.exercise.description}\nSeries/Reps: ${widget.exercise.setsReps}',
            style: const TextStyle(color: Colors.black87, height: 1.3),
          ),
        ),
        trailing: Checkbox(
          
          value: done,
          onChanged: (val) => setState(() => done = val ?? false),
          activeColor: AppTheme.red,
        ),
      ),
    );
  }
}
