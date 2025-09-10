
import 'package:get/get.dart';
import '../../data/routines_data.dart';
import '../../models/routine.dart';

class RoutineController extends GetxController {
  
  final routines = <Routine>[...RoutinesData.all].obs;

  
  final selectedRoutine = Rxn<Routine>();

  
  void selectRoutine(Routine routine) {
    selectedRoutine.value = routine;
  }

  
  void clearSelection() {
    selectedRoutine.value = null;
  }
}
