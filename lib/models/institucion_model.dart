import 'package:myfirstproject/models/maricula_model.dart';

class InstitucionModel {
  String nombre;
  String direccion;
  String ruc;
  String telefono;
  List<MatriculaModel> matriculas;
  InstitucionModel({
    required this.nombre,
    required this.direccion,
    required this.ruc,
    required this.telefono,
    required this.matriculas
  });
}
