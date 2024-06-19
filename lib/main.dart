import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myfirstproject/pages/image_explorer_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: imageExplorerPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.oswaldTextTheme(),
      ),
    ),
  );
}
