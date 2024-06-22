import 'package:myfirstproject/models/alumno_model.dart';
import 'package:myfirstproject/models/carrera_model.dart';

class MatriculaModel {
  AlumnoModel alumno;
  String? fecha;
  String hora;
  CarreraModel carrera;
  MatriculaModel(
      {required this.alumno,
      this.fecha,
      this.hora = "10 am",
      required this.carrera});
}
