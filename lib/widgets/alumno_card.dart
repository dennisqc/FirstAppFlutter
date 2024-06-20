import 'package:flutter/material.dart';
import 'package:myfirstproject/models/alumno_model.dart';

class AlumnoCard extends StatelessWidget {
  String name;
  String institution;
  AlumnoCard({
    required this.name,
    required this.institution,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text(name),
      subtitle: Text(institution),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          print("Hola");
        },
      ),
    );
  }
}

List<Alumno> alumnoList = [
  Alumno("Juan", "Juan@hotmail.com", "98765432"),
  Alumno("Juan1", "Juan1@hotmail.com", "98765432"),
  Alumno("Juan2", "Juan2@hotmail.com", "98765432"),
];
