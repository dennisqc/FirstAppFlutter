import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class imageExplorerPage extends StatefulWidget {
  const imageExplorerPage({super.key});

  @override
  State<imageExplorerPage> createState() => _imageExplorerPageState();
}

class _imageExplorerPageState extends State<imageExplorerPage> {
  @override
  int indexHero = 0;
  List<String> heroList = [
    "https://oyster.ignimgs.com/wordpress/stg.ign.com/2020/12/chris-evans-expects-avengers-4-to-be-his-last-mcu-movie_ksk9.jpg",
    "https://oyster.ignimgs.com/wordpress/stg.ign.com/2020/12/the-evolution-of-iron-man-in-the-mcu.jpg",
    "https://oyster.ignimgs.com/wordpress/stg.ign.com/2020/12/173-1730826_thor-ragnarok-wallpaper-marvel-cinematic-universe-thor-ragnarok.jpg",
    "https://oyster.ignimgs.com/wordpress/stg.ign.com/2020/12/spider-man_main-1280x720.jpg",
    "https://oyster.ignimgs.com/wordpress/stg.ign.com/2020/12/ocA7mZJmT97HzvesMjkXKA.jpg",
    "https://oyster.ignimgs.com/wordpress/stg.ign.com/2020/12/Chadwick-Boseman-as-Black-Panther-Featured-Image.jpg",
    "https://oyster.ignimgs.com/wordpress/stg.ign.com/2021/02/hulk.jpg",
    "https://oyster.ignimgs.com/wordpress/stg.ign.com/2020/12/antman-falcon.jpg",
    "https://oyster.ignimgs.com/wordpress/stg.ign.com/2020/12/mcu-heroes-star-lord.jpg"
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Image Explorer",
          style: GoogleFonts.aBeeZee()
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      heroList[indexHero],
                    ),
                    fit: BoxFit.cover),
              ),
              // child: Image.network(
              //   heroList[indexHero],fit: BoxFit.cover,
              // ),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Mostrar heroes")),
                ElevatedButton(
                    onPressed: () {
                      indexHero = Random().nextInt(8) + 1;
                      setState(() {});
                      print(indexHero);
                    },
                    child: Text(
                      "Siguiente",
                      style: GoogleFonts.aBeeZee(),                    
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
