// **********************************************************************************************
// routine_controller.dart
// Controlador GetX para gestionar las rutinas y la rutina seleccionada.
// **********************************************************************************************

import 'package:get/get.dart';
import '../../data/routines_data.dart';
import '../../models/routine.dart';

class RoutineController extends GetxController {
  // Lista reactiva de rutinas disponibles
  final routines = <Routine>[...RoutinesData.all].obs;

  // Rutina seleccionada actualmente (opcional)
  final selectedRoutine = Rxn<Routine>();

  // Selecciona una rutina y la guarda en el estado
  void selectRoutine(Routine routine) {
    selectedRoutine.value = routine;
  }

  // Limpia la selección (por ejemplo, al finalizar)
  void clearSelection() {
    selectedRoutine.value = null;
  }
}
