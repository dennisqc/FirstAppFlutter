import 'package:myfirstproject/models/alumno_model.dart';
import 'package:myfirstproject/models/carrera_model.dart';

class Matricula {
  Alumno alumno;
  String? fecha;
  String hora;
  Carrera carrera;
  Matricula(
      {required this.alumno,
      this.fecha,
      this.hora = "10 am",
      required this.carrera});
}
