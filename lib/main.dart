import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 43, 131, 203),
          title: Text(
            "Mi primera chamba",
            // style: TextStyle(color: Colors.yellow),
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          color: Colors.yellow,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              color: Colors.green,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "T",
                    style: TextStyle(fontSize: 150),
                  ),
                  Container(
                    width: 20,
                    color: Colors.blue,
                    height: 150,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 150,
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
