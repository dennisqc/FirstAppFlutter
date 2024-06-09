import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget textT() {
    return Text(
      "T",
      style: TextStyle(fontSize: 150, color: Colors.white),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.abc),
          backgroundColor: const Color(0xffA79277),
          title: Text(
            "Mi primera chamba",
            // style: TextStyle(color: Colors.yellow),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          color: Colors.yellow,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.green,
                  child: Image.network("https://static.vecteezy.com/system/resources/thumbnails/030/028/888/small_2x/crazy-spider-man-furious-mad-portrait-expressive-illustration-artwork-oil-painted-sketch-tattoo-photo.jpg")
                ),
                Image.asset("assets/images/spiderman.jpg",
                fit: BoxFit.contain,)
                //textT(),
                //textT(),
              ]),
        ),
      ),
    );
  }
}
