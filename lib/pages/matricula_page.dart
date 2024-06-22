import 'package:flutter/material.dart';

import 'package:myfirstproject/models/alumno_model.dart';
import 'package:myfirstproject/models/carrera_model.dart';
import 'package:myfirstproject/models/institucion_model.dart';
import 'package:myfirstproject/models/maricula_model.dart';
import 'package:myfirstproject/widgets/Alumno_card.dart';

class MatriculaPage extends StatefulWidget {
  @override
  State<MatriculaPage> createState() => _MatriculaPageState();
}

class _MatriculaPageState extends State<MatriculaPage> {
  List<Widget> tilesList = [];

  // Alumno nuevoAlumno = Alumno("Dennis", "dennisquispe72@gmail.com", "98765432");
  MatriculaModel nuevaMatricula = MatriculaModel(
      alumno: AlumnoModel("Denniss", "dennisquispe72@gmail.com", "98765432"),
      carrera: CarreraModel(titulo: "panadero nuclear", duracion: "5 años"),
      fecha: "20/12/2024",
      hora: "9:10");

  List<AlumnoModel> AlumnoList = [
    AlumnoModel("Juan", "Juan@hotmail.com", "98765432"),
    AlumnoModel("Juan1", "Juan1@hotmail.com", "98765432"),
    AlumnoModel("Juan2", "Juan2@hotmail.com", "98765432"),
  ];
  List<InstitucionModel> institucionList = [
    InstitucionModel(
        nombre: "nombre1",
        direccion: "direccion1",
        ruc: "ruc1",
        telefono: "telefono1",
        matriculas: [
          MatriculaModel(
              alumno: AlumnoModel("nombre", "correo", "dni"),
              carrera: CarreraModel(titulo: "titulo", duracion: "duracion"))
        ]),
    InstitucionModel(
        nombre: "nombre2",
        direccion: "direccion2",
        ruc: "ruc2",
        telefono: "telefono2",
        matriculas: []),
  ];

  // generateListTiles() {
  //   AlumnoList.forEach((element) {
  //     tilesList.add(ItemCard(name: element.nombre, institution: "tecsup"));
  //   });
  // }

  @override
  void initState() {
    // generateListTiles();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AlumnoModel auxAlumno =
              AlumnoModel("pancraacio", "gqaaa@gmail.com", "98765432");
          AlumnoList.add(auxAlumno);
          tilesList = [];
          //     generateListTiles();
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("Nombre de Institucion"),
      ),
      body: Center(
        child: Column(
          children: [
            ...institucionList.map(
              (institucionSeleccionada) {
                return Column(
                  children: [
                    Text(institucionSeleccionada.nombre),
                    ...institucionSeleccionada.matriculas.map(
                      (e) => Text("Hola"),
                    )
                  ],
                );
              },
            ),
            Text("Nombre Institucion"),
            // ...tilesList,
            ...AlumnoList.map((AlumnoSeleccionado) => ItemCard(
                  name: AlumnoSeleccionado.nombre,
                  institution: "pucp",
                  functionDelete: () {
                    // AlumnoList.removeLast();
                    AlumnoList.remove(AlumnoSeleccionado);
                    setState(() {});
                  },
                  functionEdit: () {
                    // AlumnoSeleccionado.nombre = "Dennis gaaaa";

                    AlumnoList[AlumnoList.indexOf(AlumnoSeleccionado)] =
                        AlumnoModel("nombre", "correo", "dni");

                    setState(() {});
                  },
                ))

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
