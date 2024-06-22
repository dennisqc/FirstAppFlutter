import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myfirstproject/models/Alumno_model.dart';

class ItemCard extends StatelessWidget {
  String name;
  String institution;
  VoidCallback functionDelete;
  VoidCallback functionEdit;
  ItemCard(
      {required this.name,
      required this.institution,
      required this.functionDelete,
      required this.functionEdit});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text(name),
      subtitle: Text(institution),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              functionEdit();
            },
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              functionDelete();
             
            },
          ),
        ],
      ),
    );
  }
}

