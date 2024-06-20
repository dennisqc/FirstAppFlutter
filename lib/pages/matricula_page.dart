import 'package:flutter/material.dart';
import 'package:myfirstproject/models/alumno_model.dart';
import 'package:myfirstproject/models/carrera_model.dart';
import 'package:myfirstproject/models/maricula_model.dart';
import 'package:myfirstproject/widgets/alumno_card.dart';

class MatriculaPage extends StatelessWidget {
  List<Widget> tilesList = [];
  // Alumno nuevoAlumno = Alumno("Dennis", "dennisquispe72@gmail.com", "98765432");
  Matricula nuevaMatricula = Matricula(
      alumno: Alumno("Denniss", "dennisquispe72@gmail.com", "98765432"),
      carrera: Carrera(titulo: "panadero nuclear", duracion: "5 años"),
      fecha: "20/12/2024",
      hora: "9:10");

  List<Alumno> alumnoList = [
    Alumno("Juan", "Juan@hotmail.com", "98765432"),
    Alumno("Juan1", "Juan1@hotmail.com", "98765432"),
    Alumno("Juan2", "Juan2@hotmail.com", "98765432"),
  ];

  generateListTiles() {
    alumnoList.forEach((element) {
      tilesList.add(AlumnoCard(name: element.nombre, institution: "tecsup"));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("maitruculaa"),
      ),
      body: Column(
        children: [
          ...tilesList
          // GestureDetector(
          //   child: Icon(Icons.delete),
          //   onTap: () {
          //     print("hola");
          //   },
          //   onDoubleTap: () {
          //     print("Doble Tap");
          //   },
          // )
        ],
      ),
    );
  }
}

Widget generalListTilet(String name, String instituto) {
  return ListTile(
      leading: Icon(Icons.person),
      title: Text(name),
      subtitle: Text(instituto),
      // trailing: Icon(Icons.delete),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          print("hola");
        },
      ));
}
