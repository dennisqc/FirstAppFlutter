import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:myfirstproject/pages/matricula_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: MatriculaPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.oswaldTextTheme(),
      ),
    ),
  );
}
