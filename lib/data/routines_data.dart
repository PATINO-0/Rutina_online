
import '../../models/exercise.dart';
import '../../models/routine.dart';

class RoutinesData {
  static final Routine upperBody = Routine(
    name: 'Zona superior',
    description:
        'Entrena pecho, espalda, hombros y brazos para mejorar fuerza y postura.',
    exercises: const [
      
      Exercise(
        title: 'Caminadora',
        description: 'Cardio continuo a ritmo moderado (mantén conversación).',
        type: ExerciseType.cardio,
        minutes: 15,
      ),
      Exercise(
        title: 'Elíptica',
        description:
            'Cardio de bajo impacto para elevar pulsaciones sin castigar articulaciones.',
        type: ExerciseType.cardio,
        minutes: 15,
      ),
      
      Exercise(
        title: 'Press de banca',
        description: 'Trabaja pecho y tríceps. Controla la bajada y empuja fuerte.',
        type: ExerciseType.strength,
        setsReps: '4 x 8-10',
      ),
      Exercise(
        title: 'Remo con mancuerna',
        description: 'Enfocado en espalda media y dorsales. Espalda recta.',
        type: ExerciseType.strength,
        setsReps: '4 x 10-12',
      ),
      Exercise(
        title: 'Press militar',
        description: 'Hombros y estabilidad del core. No hiperextiendas la espalda.',
        type: ExerciseType.strength,
        setsReps: '3 x 8-10',
      ),
      Exercise(
        title: 'Jalón al pecho',
        description: 'Dorsales y bíceps. Tira al pecho manteniendo escápulas activas.',
        type: ExerciseType.strength,
        setsReps: '3 x 10-12',
      ),
      Exercise(
        title: 'Curl de bíceps',
        description: 'Aísla bíceps. Evita balanceos para mejor contracción.',
        type: ExerciseType.strength,
        setsReps: '3 x 12-15',
      ),
      Exercise(
        title: 'Extensiones de tríceps en polea',
        description: 'Focaliza tríceps. Mantén codos fijos y cerca del cuerpo.',
        type: ExerciseType.strength,
        setsReps: '3 x 12-15',
      ),
    ],
  );

  static final Routine core = Routine(
    name: 'Core (abdomen)',
    description:
        'Fortalece abdomen y zona media para estabilidad, rendimiento y prevención de lesiones.',
    exercises: const [
    
      Exercise(
        title: 'Caminadora (inclinación ligera)',
        description:
            'Camina con ligera inclinación para activar core y elevar pulsaciones.',
        type: ExerciseType.cardio,
        minutes: 15,
      ),
      Exercise(
        title: 'Elíptica (intervalos suaves)',
        description:
            'Intervalos 1:1 suaves para activar sin fatigar en exceso el core.',
        type: ExerciseType.cardio,
        minutes: 15,
      ),
      
      Exercise(
        title: 'Plancha frontal',
        description: 'Alinea cuerpo y evita hundir la zona lumbar.',
        type: ExerciseType.strength,
        setsReps: '4 x 30-45s',
      ),
      Exercise(
        title: 'Crunch controlado',
        description: 'Despega escápulas sin tirar del cuello. Mov. corto.',
        type: ExerciseType.strength,
        setsReps: '3 x 15-20',
      ),
      Exercise(
        title: 'Elevaciones de piernas',
        description: 'Mantén zona lumbar pegada a la colchoneta.',
        type: ExerciseType.strength,
        setsReps: '3 x 12-15',
      ),
      Exercise(
        title: 'Russian twists',
        description: 'Trabajo de oblicuos. Controla el giro, no balancees.',
        type: ExerciseType.strength,
        setsReps: '3 x 20 (10/10)',
      ),
      Exercise(
        title: 'Mountain climbers',
        description: 'Ritmo constante. Cadera estable, core activo.',
        type: ExerciseType.strength,
        setsReps: '3 x 30-40s',
      ),
      Exercise(
        title: 'Hollow hold',
        description: 'Tensión constante en abdomen, baja brazos/piernas si es intenso.',
        type: ExerciseType.strength,
        setsReps: '3 x 20-30s',
      ),
    ],
  );

  static final Routine lowerBody = Routine(
    name: 'Zona inferior',
    description:
        'Entrena glúteos, cuádriceps, isquios y pantorrillas para fuerza y potencia.',
    exercises: const [
      
      Exercise(
        title: 'Caminadora (ritmo moderado)',
        description: 'Enfocado en elevar temperatura y preparar piernas.',
        type: ExerciseType.cardio,
        minutes: 15,
      ),
      Exercise(
        title: 'Elíptica (resistencia media)',
        description: 'Activa sin impacto: ideal para cuidar rodillas.',
        type: ExerciseType.cardio,
        minutes: 15,
      ),
      
      Exercise(
        title: 'Sentadillas',
        description: 'Profundidad cómoda, rodillas alineadas con puntas.',
        type: ExerciseType.strength,
        setsReps: '4 x 8-10',
      ),
      Exercise(
        title: 'Peso muerto rumano',
        description: 'Cadera atrás, espalda neutra, siente isquios y glúteos.',
        type: ExerciseType.strength,
        setsReps: '4 x 8-10',
      ),
      Exercise(
        title: 'Zancadas alternas',
        description: 'Paso largo, torso erguido, controla la bajada.',
        type: ExerciseType.strength,
        setsReps: '3 x 10-12 (por pierna)',
      ),
      Exercise(
        title: 'Prensa de piernas',
        description: 'Recorrido controlado, pies al ancho de hombros.',
        type: ExerciseType.strength,
        setsReps: '3 x 10-12',
      ),
      Exercise(
        title: 'Elevación de talones (gemelos)',
        description: 'Pausa arriba para máxima contracción.',
        type: ExerciseType.strength,
        setsReps: '4 x 12-15',
      ),
      Exercise(
        title: 'Puente de glúteos',
        description: 'Empuja desde talones, aprieta glúteos arriba.',
        type: ExerciseType.strength,
        setsReps: '3 x 12-15',
      ),
    ],
  );

  static final List<Routine> all = [upperBody, core, lowerBody];
}
